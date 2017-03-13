/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
#import <XCTest/XCTest.h>
#import "KIUrlSessionHttpClientFactory.h"

@interface KIUrlSessionHttpClientFactoryTests : XCTestCase

@end

@implementation KIUrlSessionHttpClientFactoryTests

- (void)testReturnsNonnull {
    KIUrlSessionHttpClientFactory *factory = [[KIUrlSessionHttpClientFactory alloc] init];
    XCTAssert(factory);
}

@end
