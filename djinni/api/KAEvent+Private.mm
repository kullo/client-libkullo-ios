// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from session.djinni

#import "KAEvent+Private.h"
#import "DJIMarshal+Private.h"
#include <cassert>

namespace ObjCpp { namespace Kullo { namespace Api {

auto Event::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::Enum<::Kullo::Api::EventType, KAEventType>::toCpp(obj.event),
            ::djinni::I64::toCpp(obj.conversationId),
            ::djinni::I64::toCpp(obj.messageId),
            ::djinni::I64::toCpp(obj.attachmentId)};
}

auto Event::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[KAEvent alloc] initWithEvent:(::djinni::Enum<::Kullo::Api::EventType, KAEventType>::fromCpp(cpp.event))
                           conversationId:(::djinni::I64::fromCpp(cpp.conversationId))
                                messageId:(::djinni::I64::fromCpp(cpp.messageId))
                             attachmentId:(::djinni::I64::fromCpp(cpp.attachmentId))];
}

} } }  // namespace ObjCpp::Kullo::Api
