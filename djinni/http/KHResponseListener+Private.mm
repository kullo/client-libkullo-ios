// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHResponseListener+Private.h"
#import "KHResponseListener.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KHProgressResult+Private.h"
#import "KHTransferProgress+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KHResponseListener ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Http::ResponseListener>&)cppRef;

@end

@implementation KHResponseListener {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Http::ResponseListener>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Http::ResponseListener>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (KHProgressResult)progressed:(nonnull KHTransferProgress *)progress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->progressed(::ObjCpp::Kullo::Http::TransferProgress::toCpp(progress));
        return ::djinni::Enum<::Kullo::Http::ProgressResult, KHProgressResult>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)dataReceived:(nonnull NSData *)data {
    try {
        _cppRefHandle.get()->dataReceived(::djinni::Binary::toCpp(data));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Http {

auto ResponseListener::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        throw std::invalid_argument("ResponseListener::toCpp requires non-nil object");
    }
    return kulloForcedNn(objc->_cppRefHandle.get());
}

auto ResponseListener::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KHResponseListener>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Http

@end
