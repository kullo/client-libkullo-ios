/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import "KIUrlSessionHttpClientFactory.h"
#import "KIUrlSessionHttpClient.h"

@implementation KIUrlSessionHttpClientFactory

- (nonnull id<KHHttpClient>)createHttpClient
{
    return [KIUrlSessionHttpClient new];
}

- (nonnull NSDictionary *)versions
{
    return [NSDictionary dictionary];
}

@end
