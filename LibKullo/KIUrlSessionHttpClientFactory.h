/* Copyright 2015-2016 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KHHttpClientFactory.h"

@interface KIUrlSessionHttpClientFactory : NSObject <KHHttpClientFactory>

- (nullable id<KHHttpClient>)createHttpClient;

- (nonnull NSDictionary<NSString *, NSString *> *)versions;

@end
