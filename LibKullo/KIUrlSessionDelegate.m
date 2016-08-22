/* Copyright 2015-2016 Kullo GmbH. All rights reserved. */
#import "KIUrlSessionDelegate.h"

@implementation KIUrlSessionDelegate {
    KHResponseListener *_responseListener;
    NSConditionLock *_finishedLock;
}

- (void)resetWithResponseListener:(KHResponseListener *)responseListener
{
    _response = NULL;
    _error = NULL;
    _responseListener = responseListener;
    _finishedLock = [[NSConditionLock alloc] initWithCondition:NO];
}

- (void)waitForCompletion
{
    [_finishedLock lockWhenCondition:YES];
    [_finishedLock unlock];
}

#pragma mark NSURLSessionDataDelegate

- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
    didReceiveData:(NSData *)data
{
    [_responseListener dataReceived:data];
    KHProgressResult result = [_responseListener progress:dataTask.countOfBytesSent
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
    KHProgressResult result = [_responseListener progress:totalBytesSent
                                              uploadTotal:totalBytesExpectedToSend
                                      downloadTransferred:0
                                            downloadTotal:0];
    if (result == KHProgressResultCancel) [task cancel];
}

- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge
 completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential * _Nullable))completionHandler
{
    completionHandler(NSURLSessionAuthChallengeRejectProtectionSpace, NULL);
}

- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
didCompleteWithError:(NSError *)error
{
    _response = task.response;
    _error = error;

#if 0
    NSLog(@"response: %@, error: %@\n", _response, _error);
#endif

    // signal that we are finished
    [_finishedLock lock];
    [_finishedLock unlockWithCondition:YES];
}

#pragma mark NSURLSessionDelegate

@end
