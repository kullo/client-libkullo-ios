/* Copyright 2015-2016 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KHHttpClient.h"

@interface KIUrlSessionHttpClient : NSObject <KHHttpClient>

- (nonnull KHResponse *)sendRequest:(nonnull KHRequest *)request
                            timeout:(int64_t)timeout
                    requestListener:(nullable KHRequestListener *)requestListener
                   responseListener:(nullable KHResponseListener *)responseListener;

@end
