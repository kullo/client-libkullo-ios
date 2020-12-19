/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import "KISystemLogLogger.h"

@interface KISystemLogLogger ()

+ (nonnull NSString *)shortenSourcePath:(nonnull NSString *)path;

@end

@implementation KISystemLogLogger

+ (NSString *)shortenSourcePath:(NSString *)path
{
    NSRange lastOccurrence = [path rangeOfString:@"/" options:NSBackwardsSearch];
    NSUInteger startIndex =
        (lastOccurrence.location == NSNotFound) ? 0 : lastOccurrence.location + 1;
    return [path substringFromIndex:startIndex];
}

- (void)writeLogMessage:(nonnull NSString *)file
                   line:(int32_t)line
               function:(nonnull NSString *)function
                   type:(KALogType)type
                message:(nonnull NSString *)message
                 thread:(nonnull NSString *)thread
             stacktrace:(nonnull NSString *)stacktrace
{
    NSString *t;
    switch (type) {
        case KALogTypeDebug:   t = @"D"; break;
        case KALogTypeInfo:    t = @"I"; break;
        case KALogTypeWarning: t = @"W"; break;
        case KALogTypeError:   t = @"E"; break;
        case KALogTypeFatal:   t = @"F"; break;
        default:               t = @"?"; break;
    }
    
    NSString *trace;
    if (stacktrace.length > 0)
    {
        NSString *stackTraceHead = @"\nStack:\n";
        trace = [stackTraceHead stringByAppendingString:stacktrace];
    }
    else
    {
        trace = @"";
    }
    NSString *shortenedFile = [KISystemLogLogger shortenSourcePath:file];
    NSLog(@"[%@] %@ %@:%d: %@%@", t, thread, shortenedFile, line, message, trace);
}

@end
