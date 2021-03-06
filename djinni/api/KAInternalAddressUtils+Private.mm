// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from address.djinni

#import "KAInternalAddressUtils+Private.h"
#import "KAInternalAddressUtils.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAInternalAddressUtils ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::InternalAddressUtils>&)cppRef;

@end

@implementation KAInternalAddressUtils {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::InternalAddressUtils>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::InternalAddressUtils>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (BOOL)isValid:(nonnull NSString *)localPart
     domainPart:(nonnull NSString *)domainPart {
    try {
        auto objcpp_result_ = ::Kullo::Api::InternalAddressUtils::isValid(::djinni::String::toCpp(localPart),
                                                                          ::djinni::String::toCpp(domainPart));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto InternalAddressUtils::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        throw std::invalid_argument("InternalAddressUtils::toCpp requires non-nil object");
    }
    return kulloForcedNn(objc->_cppRefHandle.get());
}

auto InternalAddressUtils::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KAInternalAddressUtils>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
