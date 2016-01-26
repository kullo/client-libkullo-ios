/* Copyright 2015-2016 Kullo GmbH. All rights reserved. */
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
