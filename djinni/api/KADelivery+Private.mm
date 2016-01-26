// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "KADelivery+Private.h"
#import "KADelivery.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddress+Private.h"
#import "KADateTimeBase+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KADelivery ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Delivery>&)cppRef;

@end

@implementation KADelivery {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::Delivery>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Delivery>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable KAAddress *)recipient {
    try {
        auto r = _cppRefHandle.get()->recipient();
        return ::ObjCpp::Kullo::Api::Address::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (KADeliveryState)state {
    try {
        auto r = _cppRefHandle.get()->state();
        return ::djinni::Enum<::Kullo::Api::DeliveryState, KADeliveryState>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable NSNumber *)reason {
    try {
        auto r = _cppRefHandle.get()->reason();
        return ::djinni::Optional<boost::optional, ::djinni::Enum<::Kullo::Api::DeliveryReason, KADeliveryReason>>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KADateTime *)date {
    try {
        auto r = _cppRefHandle.get()->date();
        return ::djinni::Optional<boost::optional, ::ObjCpp::Kullo::Api::DateTime>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Delivery::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Delivery::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KADelivery>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
