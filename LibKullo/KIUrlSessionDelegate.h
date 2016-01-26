/* Copyright 2015-2016 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KHResponseListener.h"

typedef void (^KIUSDCompletionHandler)(NSHTTPURLResponse * _Nullable response,
                                       NSError * _Nullable error);

@interface KIUrlSessionDelegate
    : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDataDelegate>

- (nullable instancetype)initWithResponseListener:(nonnull KHResponseListener *)respL
                                completionHandler:(nonnull KIUSDCompletionHandler)completionHandler;

@end
