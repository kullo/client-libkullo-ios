/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
#import "KIUrlSessionHttpClientFactory.h"
#import "KIUrlSessionHttpClient.h"

@implementation KIUrlSessionHttpClientFactory

- (nullable id<KHHttpClient>)createHttpClient
{
    return [KIUrlSessionHttpClient new];
}

- (nonnull NSDictionary *)versions
{
    return [NSDictionary dictionary];
}

@end
