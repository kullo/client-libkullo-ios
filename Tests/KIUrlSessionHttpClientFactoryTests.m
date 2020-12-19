/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
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
