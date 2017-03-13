/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KHResponseListener.h"

@interface KIUrlSessionDelegate
    : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDataDelegate>

@property (nullable,readonly) NSHTTPURLResponse *response;
@property (nullable,readonly) NSError *error;

- (void)resetWithResponseListener:(nonnull KHResponseListener *)responseListener;
- (void)waitForCompletion;

@end
