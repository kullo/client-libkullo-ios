// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from session.djinni

#import "KAAccountInfo.h"
#import "KANetworkError.h"
#import <Foundation/Foundation.h>


/** Listener used in Session.accountInfoAsync() */
@protocol KASessionAccountInfoListener

- (void)finished:(nonnull KAAccountInfo *)accountInfo;

- (void)error:(KANetworkError)error;

@end
