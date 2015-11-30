// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KADateTime.h"
#import <Foundation/Foundation.h>
@class KAAddress;


@interface KAConversations : NSObject

/** Returns all conversation IDs in no particular order */
- (nonnull NSArray *)all;

/**
 * Returns the conversation with the given participants (excluding the local
 * user), or -1 if the conversation doesn't exist
 */
- (int64_t)get:(nonnull NSSet *)participants;

/**
 * Adds a new conversation with the given participants (excluding the local
 * user) if it doesn't exist yet. Returns its ID in either case. All
 * addresses should have been validated through Client::addressExistsAsync()
 * before passing them into add().
 */
- (int64_t)add:(nonnull NSSet *)participants;

/**
 * Removes the given conversation and all data that depends on it (messages,
 * draft, ...)
 */
- (void)remove:(int64_t)convId;

/** Returns the participants (excluding the local user) */
- (nonnull NSSet *)participants:(int64_t)convId;

/** Total number of messages */
- (int32_t)totalMessages:(int64_t)convId;

/** Total number of unread messages */
- (int32_t)unreadMessages:(int64_t)convId;

/** Total number of undone messages */
- (int32_t)undoneMessages:(int64_t)convId;

/**
 * Timestamp of the latest message (for sorting). Returns the result of
 * emptyConversationTimestamp() if the conversation has no messages.
 */
- (nonnull KADateTime *)latestMessageTimestamp:(int64_t)convId;

/** A date many years in the future, used in latestMessageTimestamp */
+ (nonnull KADateTime *)emptyConversationTimestamp;

@end
