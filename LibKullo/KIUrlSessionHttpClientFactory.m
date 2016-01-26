/* Copyright 2015-2016 Kullo GmbH. All rights reserved. */
#import "KIUrlSessionHttpClientFactory.h"
#import "KIUrlSessionHttpClient.h"

@implementation KIUrlSessionHttpClientFactory

- (nullable id<KHHttpClient>)createHttpClient
{
    return [[KIUrlSessionHttpClient alloc] init];
}

- (nonnull NSDictionary *)versions
{
    return [NSDictionary dictionary];
}

@end
