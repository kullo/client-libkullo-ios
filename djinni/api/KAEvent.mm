// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KAEvent.h"


@implementation KAEvent

- (nonnull instancetype)initWithEvent:(KAEventType)event
                       conversationId:(int64_t)conversationId
                            messageId:(int64_t)messageId
                         attachmentId:(int64_t)attachmentId
{
    if (self = [super init]) {
        _event = event;
        _conversationId = conversationId;
        _messageId = messageId;
        _attachmentId = attachmentId;
    }
    return self;
}

+ (nonnull instancetype)EventWithEvent:(KAEventType)event
                        conversationId:(int64_t)conversationId
                             messageId:(int64_t)messageId
                          attachmentId:(int64_t)attachmentId
{
    return [[self alloc] initWithEvent:event
                        conversationId:conversationId
                             messageId:messageId
                          attachmentId:attachmentId];
}

@end