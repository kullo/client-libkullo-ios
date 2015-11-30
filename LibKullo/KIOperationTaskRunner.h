/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KATaskRunner.h"

@interface KIOperationTaskRunner : NSObject <KATaskRunner>

- (void)runTaskAsync:(nullable KATask *)task;
- (void)wait;

@end
