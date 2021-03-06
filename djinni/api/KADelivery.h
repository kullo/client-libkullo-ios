// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "KAAddress.h"
#import "KADateTime.h"
#import "KADeliveryReason.h"
#import "KADeliveryState.h"
#import <Foundation/Foundation.h>


/** Delivery information for a single recipient. */
@interface KADelivery : NSObject

- (nonnull KAAddress *)recipient;

- (KADeliveryState)state;

- (nullable NSNumber *)reason;

- (nullable KADateTime *)date;

@end
