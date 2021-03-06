// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHRegistry+Private.h"
#import "KHRegistry.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "KHHttpClientFactory+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KHRegistry ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Http::Registry>&)cppRef;

@end

@implementation KHRegistry {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Http::Registry>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Http::Registry>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (void)setHttpClientFactory:(nonnull id<KHHttpClientFactory>)factory {
    try {
        if (factory == nil) {
            throw std::invalid_argument("Got unexpected null parameter 'factory' to function KHRegistry + (void)setHttpClientFactory:(nonnull id<KHHttpClientFactory>)factory");
        }
        ::Kullo::Http::Registry::setHttpClientFactory(::ObjCpp::Kullo::Http::HttpClientFactory::toCpp(factory));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Http {

auto Registry::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        throw std::invalid_argument("Registry::toCpp requires non-nil object");
    }
    return kulloForcedNn(objc->_cppRefHandle.get());
}

auto Registry::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KHRegistry>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Http

@end
