// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "KAMessages+Private.h"
#import "KAMessages.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddress+Private.h"
#import "KAAsyncTask+Private.h"
#import "KADateTimeBase+Private.h"
#import "KADelivery+Private.h"
#import "KAMessagesSearchListener+Private.h"
#import "KASenderPredicate+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAMessages ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Messages>&)cppRef;

@end

@implementation KAMessages {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::Messages>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Messages>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSArray<NSNumber *> *)allForConversation:(int64_t)convId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->allForConversation(::djinni::I64::toCpp(convId));
        return ::djinni::List<::djinni::I64>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)latestForSender:(nullable KAAddress *)address {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->latestForSender(::ObjCpp::Kullo::Api::Address::toCpp(address));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)remove:(int64_t)msgId {
    try {
        _cppRefHandle.get()->remove(::djinni::I64::toCpp(msgId));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)conversation:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->conversation(::djinni::I64::toCpp(msgId));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<KADelivery *> *)deliveryState:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->deliveryState(::djinni::I64::toCpp(msgId));
        return ::djinni::List<::ObjCpp::Kullo::Api::Delivery>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isRead:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isRead(::djinni::I64::toCpp(msgId));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)setRead:(int64_t)msgId
          value:(BOOL)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setRead(::djinni::I64::toCpp(msgId),
                                                           ::djinni::Bool::toCpp(value));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isDone:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isDone(::djinni::I64::toCpp(msgId));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)setDone:(int64_t)msgId
          value:(BOOL)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setDone(::djinni::I64::toCpp(msgId),
                                                           ::djinni::Bool::toCpp(value));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull KADateTime *)dateSent:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->dateSent(::djinni::I64::toCpp(msgId));
        return ::ObjCpp::Kullo::Api::DateTime::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull KADateTime *)dateReceived:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->dateReceived(::djinni::I64::toCpp(msgId));
        return ::ObjCpp::Kullo::Api::DateTime::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)text:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->text(::djinni::I64::toCpp(msgId));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)textAsHtml:(int64_t)msgId
           includeKulloAddresses:(BOOL)includeKulloAddresses {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->textAsHtml(::djinni::I64::toCpp(msgId),
                                                              ::djinni::Bool::toCpp(includeKulloAddresses));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)footer:(int64_t)msgId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->footer(::djinni::I64::toCpp(msgId));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)searchAsync:(nonnull NSString *)searchText
                               convId:(int64_t)convId
                               sender:(nullable KASenderPredicate *)sender
                         limitResults:(int32_t)limitResults
                             boundary:(nullable NSString *)boundary
                             listener:(nullable id<KAMessagesSearchListener>)listener {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->searchAsync(::djinni::String::toCpp(searchText),
                                                               ::djinni::I64::toCpp(convId),
                                                               ::djinni::Optional<boost::optional, ::ObjCpp::Kullo::Api::SenderPredicate>::toCpp(sender),
                                                               ::djinni::I32::toCpp(limitResults),
                                                               ::djinni::Optional<boost::optional, ::djinni::String>::toCpp(boundary),
                                                               ::ObjCpp::Kullo::Api::MessagesSearchListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Messages::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Messages::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KAMessages>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
