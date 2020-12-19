// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client.djinni

#import <Foundation/Foundation.h>
@class KARegistration;


/** Listener used in Client.generateKeysAsync() */
@protocol KAClientGenerateKeysListener

/** Progress of key generation, in percent. */
- (void)progress:(int8_t)progress;

/**
 * Called when key generation is done. Use registration to register an
 * account.
 */
- (void)finished:(nonnull KARegistration *)registration;

@end
