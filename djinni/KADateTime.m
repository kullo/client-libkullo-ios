/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
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
            return nil;
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
