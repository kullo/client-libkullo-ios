/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import "KIUrlSessionDelegate.h"

@implementation KIUrlSessionDelegate {
    KHResponseListener *_respL;
    KIUSDCompletionHandler _completionHandler;
}

- (nullable instancetype)initWithResponseListener:(nonnull KHResponseListener *)respL
                                completionHandler:(nonnull KIUSDCompletionHandler)completionHandler;
{
    self = [super init];
    if (self)
    {
        _respL = respL;
        _completionHandler = completionHandler;
    }
    return self;
}

#pragma mark NSURLSessionDataDelegate

- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
    didReceiveData:(NSData *)data
{
    [_respL dataReceived:data];
    KHProgressResult result = [_respL progress:dataTask.countOfBytesSent
                                   uploadTotal:dataTask.countOfBytesExpectedToSend
                           downloadTransferred:dataTask.countOfBytesReceived
                                 downloadTotal:dataTask.countOfBytesExpectedToReceive];
    if (result == KHProgressResultCancel) [dataTask cancel];
}

#pragma mark NSURLSessionTaskDelegate

- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
   didSendBodyData:(int64_t)bytesSent
    totalBytesSent:(int64_t)totalBytesSent
totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend
{
    KHProgressResult result = [_respL progress:totalBytesSent
                                   uploadTotal:totalBytesExpectedToSend
                           downloadTransferred:0
                                 downloadTotal:0];
    if (result == KHProgressResultCancel) [task cancel];
}

- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
didCompleteWithError:(NSError *)error
{
    _completionHandler((NSHTTPURLResponse *)task.response, error);
}

#pragma mark NSURLSessionDelegate

@end
