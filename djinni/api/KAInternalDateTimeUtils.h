// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from datetime.djinni

#import "KADateTime.h"
#import <Foundation/Foundation.h>


@interface KAInternalDateTimeUtils : NSObject

/** Checks a set of DateTime constructor arguments for validity */
+ (BOOL)isValid:(int16_t)year
          month:(int8_t)month
            day:(int8_t)day
           hour:(int8_t)hour
         minute:(int8_t)minute
         second:(int8_t)second
tzOffsetMinutes:(int16_t)tzOffsetMinutes;

/** Returns the current time in the UTC timezone */
+ (nonnull KADateTime *)nowUtc;

/**
 * Returns the RFC3339 representation
 * yyyy-mm-ddThh:mm:ss[.f+](Z|(+|-)hh:mm) (case-insensitive)
 */
+ (nonnull NSString *)toString:(nonnull KADateTime *)dateTime;

/**
 * Compares two DateTime objects, taking time zones etc. into account.
 * Returns -1 iff lhs < rhs, 0 iff lhs == rhs, 1 iff lhs > rhs.
 */
+ (int8_t)compare:(nonnull KADateTime *)lhs
              rhs:(nonnull KADateTime *)rhs;

@end
