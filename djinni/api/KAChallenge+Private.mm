// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from registration.djinni

#import "KAChallenge+Private.h"
#import "KAChallenge.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAChallengeType+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAChallenge ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Challenge>&)cppRef;

@end

@implementation KAChallenge {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::Challenge>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Challenge>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (KAChallengeType)type {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->type();
        return ::djinni::Enum<::Kullo::Api::ChallengeType, KAChallengeType>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)text {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->text();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Challenge::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Challenge::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KAChallenge>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
