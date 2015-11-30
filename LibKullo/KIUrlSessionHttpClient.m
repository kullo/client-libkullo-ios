/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import "KIUrlSessionHttpClient.h"

#import "KHResponseListener.h"
#import "KIRequestBodyInputStream.h"
#import "KIUrlSessionDelegate.h"

#include <math.h>

@interface KIUrlSessionHttpClient () {
    NSOperationQueue *queue;
}

- (instancetype)init;
@end

@implementation KIUrlSessionHttpClient

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        queue = [[NSOperationQueue alloc] init];
    }
    return self;
}

- (void)setMethod:(KHHttpMethod)method ofRequest:(nonnull NSMutableURLRequest *)urlRequest
{
    NSString *methodString = [NSString string];
    switch (method) {
        case KHHttpMethodGet: methodString = @"GET"; break;
        case KHHttpMethodPost: methodString = @"POST"; break;
        case KHHttpMethodPut: methodString = @"PUT"; break;
        case KHHttpMethodPatch: methodString = @"PATCH"; break;
        case KHHttpMethodDelete: methodString = @"DELETE"; break;
        default:
            NSAssert(false, @"Unknown KHHttpMethod: %ld", (long)method);
            break;
    }
    urlRequest.HTTPMethod = methodString;
}

- (void)setTimeout:(int64_t)timeout ofRequest:(nonnull NSMutableURLRequest *)urlRequest
{
    // round timeouts to 1s if they would have been rounded to 0 otherwise
    if (timeout > 0 && timeout <= 500) timeout = 1000;

    long long timeoutSeconds = llround(timeout / 1000.0);
    if (timeoutSeconds > 0) urlRequest.timeoutInterval = timeoutSeconds;
}

- (void)setHeaders:(nonnull NSArray<KHHttpHeader*> *)headers
        ofRequest:(nonnull NSMutableURLRequest *)urlRequest
{
    // Set default content type that will be overwritten by any other value that is set below.
    // We need this because when no type is set and we POST something, NSUrlSession is trying to be
    // smart and uses HTML form encoding, which we need to prevent as it mangles the request body.
    [urlRequest setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
    for (KHHttpHeader *header in headers)
    {
        [urlRequest setValue:header.value forHTTPHeaderField:header.key];
    }
}

- (NSNumber *)convertToResponseError:(nonnull NSError *)error
{
    NSInteger kulloResponseError;
    switch (error.code) {
        case NSURLErrorCancelled: kulloResponseError = KHResponseErrorCanceled; break;
        case NSURLErrorTimedOut: kulloResponseError = KHResponseErrorTimeout; break;
        default:
            NSLog(@"Network error during request: %@", error);
            kulloResponseError = KHResponseErrorNetworkError;
            break;
    }
    return [NSNumber numberWithInteger:kulloResponseError];
}

- (nonnull NSArray<KHHttpHeader*> *)
    convertToHttpHeaders:(nonnull NSDictionary<NSString*,NSString*> *)headerFields
{
    NSMutableArray<KHHttpHeader *> *result = [NSMutableArray arrayWithCapacity:headerFields.count];
    for (NSString *key in headerFields) {
        [result addObject:[KHHttpHeader HttpHeaderWithKey:key
                                                    value:[headerFields objectForKey:key]]];
    }
    return result;
}

- (nonnull KHResponse *)sendRequest:(nonnull KHRequest *)request
                            timeout:(int64_t)timeout
                    requestListener:(nullable KHRequestListener *)requestListener
                   responseListener:(nullable KHResponseListener *)responseListener
{
    NSAssert(timeout >= 0, @"timeout cannot be negative");

    // create request
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest
                                       requestWithURL:[NSURL URLWithString:request.url]];
    [self setMethod:request.method ofRequest:urlRequest];
    [self setTimeout:timeout ofRequest:urlRequest];
    [self setHeaders:request.headers ofRequest:urlRequest];

    if (requestListener)
    {
        urlRequest.HTTPBodyStream = [[KIRequestBodyInputStream alloc]
                                     initWithRequestListener:requestListener];
    }

    // create session
    __block NSHTTPURLResponse *httpResp;
    __block NSError *respError;
    __block NSConditionLock *finishedLock = [[NSConditionLock alloc] initWithCondition:NO];

    NSURLSessionConfiguration *config = [NSURLSessionConfiguration ephemeralSessionConfiguration];
    KIUrlSessionDelegate *delegate = [[KIUrlSessionDelegate alloc]
                                      initWithResponseListener:responseListener
                                      completionHandler:^(NSHTTPURLResponse * _Nullable response,
                                                          NSError * _Nullable error) {
#if 0
                                          NSLog(@"response: %@, error: %@\n", response, error);
#endif

                                          httpResp = response;
                                          respError = error;

                                          // signal that we are finished
                                          [finishedLock lock];
                                          [finishedLock unlockWithCondition:YES];
                                      }];

    NSURLSession *session = [NSURLSession sessionWithConfiguration:config
                                                          delegate:delegate
                                                     delegateQueue:queue];
    [[session dataTaskWithRequest:urlRequest] resume];

    // wait for finish
    [finishedLock lockWhenCondition:YES];
    [finishedLock unlock];

    NSNumber *error = nil;
    int32_t statusCode = 0;
    NSArray<KHHttpHeader*> *headers = @[];
    if (respError)
    {
        error = [self convertToResponseError:respError];
    }
    else // success
    {
        NSAssert(httpResp, @"httpResp must be non-null");
        NSAssert(httpResp.statusCode <= UINT32_MAX, @"statusCode must fit into uint32_t");
        statusCode = (uint32_t)httpResp.statusCode;
        headers = [self convertToHttpHeaders:httpResp.allHeaderFields];
    }

    return [KHResponse ResponseWithError:error
                              statusCode:statusCode
                                 headers:headers];
}

@end
