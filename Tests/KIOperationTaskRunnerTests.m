/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import <XCTest/XCTest.h>
#import "KATask.h"
#import "KIOperationTaskRunner.h"

@interface TestTask : KATask

- (void)run;
@property (readonly) BOOL hasBeenRun;

@end


@implementation TestTask

- (void)run
{
    _hasBeenRun = true;
}

@end


@interface KIOperationTaskRunnerTests : XCTestCase
@end


@implementation KIOperationTaskRunnerTests

- (void)testRunTaskAsyncExecutesTask {
    KIOperationTaskRunner *uut = [[KIOperationTaskRunner alloc] init];

    TestTask *task = [[TestTask alloc] init];
    [uut runTaskAsync:task];
    [uut wait];
    XCTAssert(task.hasBeenRun);
}

@end
