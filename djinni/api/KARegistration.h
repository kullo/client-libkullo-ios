// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from registration.djinni

#import <Foundation/Foundation.h>
@class KAAddress;
@class KAAsyncTask;
@class KAChallenge;
@protocol KARegistrationRegisterAccountListener;


/** Can be obtained through Client.generateKeysAsync(). */
@interface KARegistration : NSObject

/**
 * Register a new account.
 *
 * Set challenge to the value passed to
 * RegistrationRegisterAccountListener::challengeNeeded if you recently sent
 * a registration request for the same address that failed because of a
 * missing or wrong challenge answer. Otherwise, just pass null.
 *
 * If no challenge is needed, set challengeAnswer to ""
 */
- (nullable KAAsyncTask *)registerAccountAsync:(nullable KAAddress *)address
                                 acceptedTerms:(nonnull NSString *)acceptedTerms
                                     challenge:(nullable KAChallenge *)challenge
                               challengeAnswer:(nonnull NSString *)challengeAnswer
                                      listener:(nullable id<KARegistrationRegisterAccountListener>)listener;

@end
