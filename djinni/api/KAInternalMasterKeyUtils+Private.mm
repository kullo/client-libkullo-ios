// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from masterkey.djinni

#import "KAInternalMasterKeyUtils+Private.h"
#import "KAInternalMasterKeyUtils.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAInternalMasterKeyUtils ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::InternalMasterKeyUtils>&)cppRef;

@end

@implementation KAInternalMasterKeyUtils {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::InternalMasterKeyUtils>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::InternalMasterKeyUtils>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (BOOL)isValid:(nonnull NSArray<NSString *> *)blocks {
    try {
        auto objcpp_result_ = ::Kullo::Api::InternalMasterKeyUtils::isValid(::djinni::List<::djinni::String>::toCpp(blocks));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto InternalMasterKeyUtils::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        throw std::invalid_argument("InternalMasterKeyUtils::toCpp requires non-nil object");
    }
    return kulloForcedNn(objc->_cppRefHandle.get());
}

auto InternalMasterKeyUtils::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KAInternalMasterKeyUtils>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
