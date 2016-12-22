// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from conversations.djinni

#import "KAConversations+Private.h"
#import "KAConversations.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddress+Private.h"
#import "KADateTimeBase+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAConversations ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Conversations>&)cppRef;

@end

@implementation KAConversations {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::Conversations>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Conversations>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSArray<NSNumber *> *)all {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->all();
        return ::djinni::List<::djinni::I64>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)get:(nonnull NSSet<KAAddress *> *)participants {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->get(::djinni::Set<::ObjCpp::Kullo::Api::Address>::toCpp(participants));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)add:(nonnull NSSet<KAAddress *> *)participants {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->add(::djinni::Set<::ObjCpp::Kullo::Api::Address>::toCpp(participants));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)triggerRemoval:(int64_t)convId {
    try {
        _cppRefHandle.get()->triggerRemoval(::djinni::I64::toCpp(convId));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSSet<KAAddress *> *)participants:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->participants(::djinni::I64::toCpp(convId));
        return ::djinni::Set<::ObjCpp::Kullo::Api::Address>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)totalMessages:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->totalMessages(::djinni::I64::toCpp(convId));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)unreadMessages:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->unreadMessages(::djinni::I64::toCpp(convId));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)undoneMessages:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->undoneMessages(::djinni::I64::toCpp(convId));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)incomingMessages:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->incomingMessages(::djinni::I64::toCpp(convId));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)outgoingMessages:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->outgoingMessages(::djinni::I64::toCpp(convId));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull KADateTime *)latestMessageTimestamp:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->latestMessageTimestamp(::djinni::I64::toCpp(convId));
        return ::ObjCpp::Kullo::Api::DateTime::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull KADateTime *)emptyConversationTimestamp {
    try {
        auto objcpp_result_ = ::Kullo::Api::Conversations::emptyConversationTimestamp();
        return ::ObjCpp::Kullo::Api::DateTime::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Conversations::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Conversations::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KAConversations>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
