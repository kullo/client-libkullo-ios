/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
#import "KIUrlSessionHttpClient.h"

#import "KHResponseListener.h"
#import "KIRequestBodyInputStream.h"
#import "KIUrlSessionDelegate.h"

#include <math.h>

@interface KIUrlSessionHttpClient () {
    NSOperationQueue *queue;
    KIUrlSessionDelegate *sessionDelegate;
    NSURLSession *session;
}

@end

@implementation KIUrlSessionHttpClient

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        queue = [NSOperationQueue new];
        sessionDelegate = [KIUrlSessionDelegate new];
        session = [self createSession];
    }
    return self;
}

- (NSURLSession *)createSession
{
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration ephemeralSessionConfiguration];
    return [NSURLSession sessionWithConfiguration:config
                                         delegate:sessionDelegate
                                    delegateQueue:queue];
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

- (void)setTimeoutMs:(int64_t)timeoutMs ofRequest:(nonnull NSMutableURLRequest *)urlRequest
{
    // round timeouts to 1s if they would have been rounded to 0 otherwise
    if (timeoutMs > 0 && timeoutMs <= 500) timeoutMs = 1000;

    long long timeoutSeconds = llround(timeoutMs / 1000.0);
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

#pragma mark KHHttpClient

- (nonnull KHResponse *)sendRequest:(nonnull KHRequest *)request
                          timeoutMs:(int32_t)timeoutMs
                    requestListener:(nullable KHRequestListener *)requestListener
                   responseListener:(nullable KHResponseListener *)responseListener
{
    NSAssert(timeoutMs >= 0, @"timeout cannot be negative");

    // create request
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest
                                       requestWithURL:[NSURL URLWithString:request.url]];
    [self setMethod:request.method ofRequest:urlRequest];
    [self setTimeoutMs:timeoutMs ofRequest:urlRequest];
    [self setHeaders:request.headers ofRequest:urlRequest];

    if (requestListener)
    {
        urlRequest.HTTPBodyStream = [[KIRequestBodyInputStream alloc]
                                     initWithRequestListener:requestListener];
    }

    [sessionDelegate resetWithResponseListener:responseListener];
    [[session dataTaskWithRequest:urlRequest] resume];
    [sessionDelegate waitForCompletion];

    NSNumber *error = nil;
    int32_t statusCode = 0;
    NSArray<KHHttpHeader*> *headers = @[];
    if (sessionDelegate.error)
    {
        error = [self convertToResponseError:sessionDelegate.error];
    }
    else // success
    {
        NSAssert(sessionDelegate.response, @"httpResp must be non-null");
        NSAssert(sessionDelegate.response.statusCode <= UINT32_MAX, @"statusCode must fit into uint32_t");
        statusCode = (uint32_t)sessionDelegate.response.statusCode;
        headers = [self convertToHttpHeaders:sessionDelegate.response.allHeaderFields];
    }

    return [KHResponse ResponseWithError:error
                              statusCode:statusCode
                                 headers:headers];
}

@end
