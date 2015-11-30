// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KADateTime.h"
#import "KADeliveryReason.h"
#import "KADeliveryState.h"
#import <Foundation/Foundation.h>
@class KAAddress;


/** Delivery information for a single recipient. */
@interface KADelivery : NSObject

- (nullable KAAddress *)recipient;

- (KADeliveryState)state;

- (nullable NSNumber *)reason;

- (nullable KADateTime *)date;

@end