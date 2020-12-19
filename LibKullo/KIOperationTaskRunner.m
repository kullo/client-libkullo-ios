/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import "KIOperationTaskRunner.h"
#import "KATask.h"

@interface KIOperationTaskRunner () {
    NSOperationQueue *queue;
}
@end

@implementation KIOperationTaskRunner

- (void)runTaskAsync:(nonnull KATask *)task
{
    NSInvocationOperation *op = [[NSInvocationOperation alloc]
                                 initWithTarget:task selector:@selector(run) object:nil];
    
    if (!queue)
    {
        queue = [[NSOperationQueue alloc] init];
        queue.qualityOfService = NSQualityOfServiceUtility;
        NSAssert(queue, @"Queue initialization must succeed");
    }
    [queue addOperation:op];
}

- (void)wait
{
    if (queue) [queue waitUntilAllOperationsAreFinished];
}

@end
