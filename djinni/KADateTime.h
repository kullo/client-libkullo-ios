/* Copyright 2015-2017 Kullo GmbH. All rights reserved. */
#import "KADateTimeBase.h"

@interface KADateTime : KADateTimeBase

+ (nonnull KADateTime *)nowUtc;

- (nonnull instancetype)initWithYear:(int16_t)year
                               month:(int8_t)month
                                 day:(int8_t)day
                                hour:(int8_t)hour
                              minute:(int8_t)minute
                              second:(int8_t)second
                     tzOffsetMinutes:(int16_t)tzOffsetMinutes;

- (nonnull NSString *)description;

- (NSComparisonResult)compare:(nonnull KADateTime *)object;

@end
