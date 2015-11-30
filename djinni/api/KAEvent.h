// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KAEventType.h"
#import <Foundation/Foundation.h>

@interface KAEvent : NSObject
- (nonnull instancetype)initWithEvent:(KAEventType)event
                       conversationId:(int64_t)conversationId
                            messageId:(int64_t)messageId
                         attachmentId:(int64_t)attachmentId;
+ (nonnull instancetype)EventWithEvent:(KAEventType)event
                        conversationId:(int64_t)conversationId
                             messageId:(int64_t)messageId
                          attachmentId:(int64_t)attachmentId;

@property (nonatomic, readonly) KAEventType event;

/** -1 if not applicable */
@property (nonatomic, readonly) int64_t conversationId;

/** -1 if not applicable */
@property (nonatomic, readonly) int64_t messageId;

/** -1 if not applicable */
@property (nonatomic, readonly) int64_t attachmentId;

@end