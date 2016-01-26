// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from syncer.djinni

#import "KANetworkError.h"
#import "KASyncProgress.h"
#import <Foundation/Foundation.h>


/** Listener used in Syncer */
@protocol KASyncerListener

/** Called when the syncer's state changes from idle to syncing. */
- (void)started;

/**
 * Called when the attachments of a draft that should be sent are too big.
 * The syncer will continue syncing the other requested items.
 */
- (void)draftAttachmentsTooBig:(int64_t)convId;

/** Called to inform about the progress of the current sync */
- (void)progressed:(nonnull KASyncProgress *)progress;

/**
 * Called when all requested syncs have finished. Not called when error() is
 * called.
 */
- (void)finished;

/**
 * Called when an error occurred during syncing which makes continuing the
 * sync impossible.
 */
- (void)error:(KANetworkError)error;

@end