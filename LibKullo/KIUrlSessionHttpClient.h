/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KHHttpClient.h"

@interface KIUrlSessionHttpClient : NSObject <KHHttpClient, NSURLSessionDelegate>

- (nonnull KHResponse *)sendRequest:(nonnull KHRequest *)request
                            timeout:(int64_t)timeout
                    requestListener:(nullable KHRequestListener *)requestListener
                   responseListener:(nullable KHResponseListener *)responseListener;

@end