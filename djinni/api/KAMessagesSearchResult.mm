// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "KAMessagesSearchResult.h"


@implementation KAMessagesSearchResult

- (nonnull instancetype)initWithMsgId:(int64_t)msgId
                               convId:(int64_t)convId
                        senderAddress:(nonnull NSString *)senderAddress
                         dateReceived:(nonnull KADateTime *)dateReceived
                              snippet:(nonnull NSString *)snippet
                             boundary:(nonnull NSString *)boundary
{
    if (self = [super init]) {
        _msgId = msgId;
        _convId = convId;
        _senderAddress = [senderAddress copy];
        _dateReceived = dateReceived;
        _snippet = [snippet copy];
        _boundary = [boundary copy];
    }
    return self;
}

+ (nonnull instancetype)MessagesSearchResultWithMsgId:(int64_t)msgId
                                               convId:(int64_t)convId
                                        senderAddress:(nonnull NSString *)senderAddress
                                         dateReceived:(nonnull KADateTime *)dateReceived
                                              snippet:(nonnull NSString *)snippet
                                             boundary:(nonnull NSString *)boundary
{
    return [[self alloc] initWithMsgId:msgId
                                convId:convId
                         senderAddress:senderAddress
                          dateReceived:dateReceived
                               snippet:snippet
                              boundary:boundary];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p msgId:%@ convId:%@ senderAddress:%@ dateReceived:%@ snippet:%@ boundary:%@>", self.class, (void *)self, @(self.msgId), @(self.convId), self.senderAddress, self.dateReceived, self.snippet, self.boundary];
}

@end
