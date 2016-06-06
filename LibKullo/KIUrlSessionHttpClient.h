/* Copyright 2015-2016 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KHHttpClient.h"

@interface KIUrlSessionHttpClient : NSObject <KHHttpClient>

- (nonnull KHResponse *)sendRequest:(nonnull KHRequest *)request
                          timeoutMs:(int32_t)timeoutMs
                    requestListener:(nullable KHRequestListener *)requestListener
                   responseListener:(nullable KHResponseListener *)responseListener;

@end
