/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import "KIOperationTaskRunner.h"
#import "KATask.h"

@interface KIOperationTaskRunner () {
    NSOperationQueue *queue;
}
@end

@implementation KIOperationTaskRunner

- (void)runTaskAsync:(nullable KATask *)task
{
    NSParameterAssert(task);
    
    NSInvocationOperation *op = [[NSInvocationOperation alloc]
                                 initWithTarget:task selector:@selector(run) object:nil];
    
    if (!queue)
    {
        queue = [[NSOperationQueue alloc] init];
        NSAssert(queue, @"Queue initialization must succeed");
    }
    [queue addOperation:op];
}

- (void)wait
{
    if (queue) [queue waitUntilAllOperationsAreFinished];
}

@end
