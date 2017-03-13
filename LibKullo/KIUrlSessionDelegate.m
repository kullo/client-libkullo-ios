/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
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

static int64_t sanitizeTotalBytes(int64_t bytes)
{
    return bytes == NSURLSessionTransferSizeUnknown ? 0 : bytes;
}

#pragma mark NSURLSessionDataDelegate

- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
    didReceiveData:(NSData *)data
{
    [_responseListener dataReceived:data];
    KHTransferProgress *progress = [KHTransferProgress
                                    TransferProgressWithUploadTransferred:dataTask.countOfBytesSent
                                    uploadTotal:sanitizeTotalBytes(dataTask.countOfBytesExpectedToSend)
                                    downloadTransferred:dataTask.countOfBytesReceived
                                    downloadTotal:sanitizeTotalBytes(dataTask.countOfBytesExpectedToReceive)];
    KHProgressResult result = [_responseListener progressed:progress];
    if (result == KHProgressResultCancel) [dataTask cancel];
}

#pragma mark NSURLSessionTaskDelegate

- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
   didSendBodyData:(int64_t)bytesSent
    totalBytesSent:(int64_t)totalBytesSent
totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend
{
    KHTransferProgress *progress = [KHTransferProgress
                                    TransferProgressWithUploadTransferred:totalBytesSent
                                    uploadTotal:sanitizeTotalBytes(totalBytesExpectedToSend)
                                    downloadTransferred:0
                                    downloadTotal:0];
    KHProgressResult result = [_responseListener progressed:progress];
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
    NSAssert(!task.response || [task.response isKindOfClass:[NSHTTPURLResponse class]],
             @"must be a HTTP response");
    _response = (NSHTTPURLResponse *)task.response;
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
