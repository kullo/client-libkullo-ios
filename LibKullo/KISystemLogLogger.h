/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KALogListener.h"

@interface KISystemLogLogger : NSObject <KALogListener>

- (void)writeLogMessage:(nonnull NSString *)file
                   line:(int32_t)line
               function:(nonnull NSString *)function
                   type:(KALogType)type
                message:(nonnull NSString *)message
                 thread:(nonnull NSString *)thread
             stacktrace:(nonnull NSString *)stacktrace;

@end
