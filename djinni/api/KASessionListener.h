// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from session.djinni

#import <Foundation/Foundation.h>
@class KAInternalEvent;


/** Listener used in Client.createSessionAsync() */
@protocol KASessionListener

/** event must be passed to Session.notify() from UI thread */
- (void)internalEvent:(nonnull KAInternalEvent *)event;

@end
