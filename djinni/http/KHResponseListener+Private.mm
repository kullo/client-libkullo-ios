// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHResponseListener+Private.h"
#import "KHResponseListener.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
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

- (KHProgressResult)progress:(int64_t)uploadTransferred
                 uploadTotal:(int64_t)uploadTotal
         downloadTransferred:(int64_t)downloadTransferred
               downloadTotal:(int64_t)downloadTotal {
    try {
        auto r = _cppRefHandle.get()->progress(::djinni::I64::toCpp(uploadTransferred),
                                               ::djinni::I64::toCpp(uploadTotal),
                                               ::djinni::I64::toCpp(downloadTransferred),
                                               ::djinni::I64::toCpp(downloadTotal));
        return ::djinni::Enum<::Kullo::Http::ProgressResult, KHProgressResult>::fromCpp(r);
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
        return nullptr;
    }
    return objc->_cppRefHandle.get();
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
