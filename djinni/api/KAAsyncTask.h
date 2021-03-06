// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from asynctask.djinni

#import <Foundation/Foundation.h>


/**
 * Encapsulates an asynchronous task. Must live at least until the task finishes
 * or until it is canceled. If its destructor is called, it will call cancel().
 */
@interface KAAsyncTask : NSObject

/**
 * Tells the asynchronous task to finish, but doesn't wait for termination.
 * Stops all callbacks, even if the task continues to run.
 * Thread safe.
 */
- (void)cancel;

/**
 * Returns true iff the task has finished its work.
 * Thread safe.
 */
- (BOOL)isDone;

/**
 * Blocks until the task has finished executing.
 * Thread safe.
 */
- (void)waitUntilDone;

/**
 * Blocks until the task has finished executing or until the timeout has
 * expired. Returns false on timeout, true otherwise.
 * Thread safe.
 */
- (BOOL)waitForMs:(int32_t)timeout;

@end
