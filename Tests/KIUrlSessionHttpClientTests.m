/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import <XCTest/XCTest.h>
#import "KIUrlSessionHttpClient.h"
#import "KHRequestListener.h"
#import "KHResponseListener.h"

@interface TestRequestListener : KHRequestListener
@property (readonly) NSData *data;
@end

@implementation TestRequestListener {
    NSUInteger offset;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSString *str = @"Hello, world.";
        _data = [str dataUsingEncoding:NSUTF8StringEncoding];
        offset = 0;
    }
    return self;
}

- (NSData *)read:(int64_t)maxSize
{
    if (maxSize > NSUIntegerMax) maxSize = NSUIntegerMax;
    NSRange range = {offset, MIN((NSUInteger)maxSize, _data.length - offset)};
    offset += range.length;
    return [_data subdataWithRange:range];
}

@end

@interface TestResponseListener : KHResponseListener
@property (readonly) NSData *data;
@end

@implementation TestResponseListener

- (KHProgressResult)progress:(int64_t)uploadTransferred
                 uploadTotal:(int64_t)uploadTotal
         downloadTransferred:(int64_t)downloadTransferred
               downloadTotal:(int64_t)downloadTotal
{
    return KHProgressResultContinue;
}

- (void)dataReceived:(nonnull NSData *)data
{
    _data = data;
}

@end


@interface KIUrlSessionHttpClientTests : XCTestCase
@end

@implementation KIUrlSessionHttpClientTests {
    KIUrlSessionHttpClient *uut;
    TestRequestListener *reqL;
    TestResponseListener *respL;
}

- (void)setUp {
    [super setUp];
    uut = [KIUrlSessionHttpClient new];
    reqL = [TestRequestListener new];
    respL = [TestResponseListener new];
}

#if 0
- (void)testSuccessfulGet {
    NSArray<KHHttpHeader*> *headers = @[[KHHttpHeader HttpHeaderWithKey:@"User-Agent"
                                                                  value:@"test123test"]];
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodGet
                                                  url:@"http://httpbin.org/get"
                                              headers:headers];
    KHResponse *resp = [uut sendRequest:request
                                timeout:5000
                        requestListener:nil
                       responseListener:respL];
    XCTAssert(!resp.error);
    XCTAssertEqual(resp.statusCode, 200);

    // check headers
    NSMutableDictionary<NSString*,NSString*> *headerDict = [NSMutableDictionary dictionaryWithCapacity:resp.headers.count];
    for (KHHttpHeader *header in resp.headers)
    {
        [headerDict setObject:header.value forKey:header.key];
    }
    XCTAssert([[headerDict objectForKey:@"Server"] isEqualToString:@"nginx"]);

    // check body
    NSString *responseString = [[NSString alloc] initWithData:respL.data
                                                     encoding:NSUTF8StringEncoding];
    XCTAssert([responseString containsString:@"httpbin.org"]);
}

- (void)testTimeout {
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodGet
                                                  url:@"http://httpbin.org/delay/10"
                                              headers:@[]];
    KHResponse *resp = [uut sendRequest:request
                                timeout:1
                        requestListener:nil
                       responseListener:respL];
    XCTAssert([resp.error isEqualToNumber:[NSNumber numberWithInteger:KHResponseErrorTimeout]]);
}

- (nonnull KHResponse *)sendRequest:(nonnull KHRequest *)request
{
    return [uut sendRequest:request
                    timeout:5000
            requestListener:reqL
           responseListener:respL];
}

- (void)checkForRequestBodyInResponse
{
    NSString *responseString = [[NSString alloc] initWithData:respL.data
                                                     encoding:NSUTF8StringEncoding];
    NSMutableString *expected = [NSMutableString new];
    [expected appendString:@"\"data\": \""];
    [expected appendString:[[NSString alloc] initWithData:reqL.data encoding:NSUTF8StringEncoding]];
    XCTAssert([responseString containsString:expected]);
}

- (void)testSuccessfulPost {
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodPost
                                                  url:@"http://httpbin.org/post"
                                              headers:@[]];
    KHResponse *resp = [self sendRequest:request];

    XCTAssert(!resp.error);
    XCTAssertEqual(resp.statusCode, 200);
    [self checkForRequestBodyInResponse];
}

- (void)testSuccessfulPut {
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodPut
                                                  url:@"http://httpbin.org/put"
                                              headers:@[]];
    KHResponse *resp = [self sendRequest:request];

    XCTAssert(!resp.error);
    XCTAssertEqual(resp.statusCode, 200);
    [self checkForRequestBodyInResponse];
}

- (void)testSuccessfulPatch {
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodPatch
                                                  url:@"http://httpbin.org/patch"
                                              headers:@[]];
    KHResponse *resp = [self sendRequest:request];

    XCTAssert(!resp.error);
    XCTAssertEqual(resp.statusCode, 200);
    [self checkForRequestBodyInResponse];
}

- (void)testSuccessfulDelete {
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodDelete
                                                  url:@"http://httpbin.org/delete"
                                              headers:@[]];
    KHResponse *resp = [uut sendRequest:request
                                timeout:5000
                        requestListener:nil
                       responseListener:respL];
    XCTAssert(!resp.error);
    XCTAssertEqual(resp.statusCode, 200);
}
#endif

- (void)testFailOnNegativeTimeout {
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodGet
                                                  url:@"http://httpbin.org/get"
                                              headers:[NSArray array]];
    XCTAssertThrows([uut sendRequest:request
                             timeout:-1
                     requestListener:nil
                    responseListener:respL]);
}

- (void)testConnectionFailure {
    KHRequest *request = [KHRequest RequestWithMethod:KHHttpMethodGet
                                                  url:@"http://localhost:1/"
                                              headers:[NSArray array]];
    KHResponse *resp = [uut sendRequest:request
                                timeout:5000
                        requestListener:nil
                       responseListener:respL];
    XCTAssertEqual(resp.error, [NSNumber numberWithInteger:KHResponseErrorNetworkError]);
    XCTAssertEqual(resp.statusCode, 0);
}

@end
