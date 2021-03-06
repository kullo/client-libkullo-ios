// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client.djinni

#import "KAAddress.h"
#import "KANetworkError.h"
#import <Foundation/Foundation.h>


/** Listener used in Client.addressExistsAsync() */
@protocol KAClientAddressExistsListener

- (void)finished:(nonnull KAAddress *)address
          exists:(BOOL)exists;

- (void)error:(nonnull KAAddress *)address
        error:(KANetworkError)error;

@end
