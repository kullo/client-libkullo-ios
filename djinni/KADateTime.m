/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import "KADateTime.h"
#import "KAInternalDateTimeUtils.h"

@implementation KADateTime

+ (nonnull KADateTime *)nowUtc
{
    return [KAInternalDateTimeUtils nowUtc];
}

- (nonnull instancetype)initWithYear:(int16_t)year
                               month:(int8_t)month
                                 day:(int8_t)day
                                hour:(int8_t)hour
                              minute:(int8_t)minute
                              second:(int8_t)second
                     tzOffsetMinutes:(int16_t)tzOffsetMinutes
{
    if (self = [super initWithYear:year
                             month:month
                               day:day
                              hour:hour
                            minute:minute
                            second:second
                   tzOffsetMinutes:tzOffsetMinutes])
    {
        if (![KAInternalDateTimeUtils isValid:year
                                        month:month
                                          day:day
                                         hour:hour
                                       minute:minute
                                       second:second
                              tzOffsetMinutes:tzOffsetMinutes])
        {
            [NSException raise:@"Invalid DateTime" format:@"%d-%d-%d %d:%d:%d tz %d",
             year, month, day, hour, minute, second, tzOffsetMinutes];
        }
    }
    return self;
}

- (nonnull NSString *)description
{
    return [KAInternalDateTimeUtils toString:self];
}

- (NSComparisonResult)compare:(nonnull KADateTime *)object
{
    switch ([KAInternalDateTimeUtils compare:self rhs:object])
    {
        case -1: return NSOrderedAscending;
        case  1: return NSOrderedDescending;
        default: return NSOrderedSame;
    }
}

@end
