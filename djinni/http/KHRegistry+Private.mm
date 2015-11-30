// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHRegistry+Private.h"
#import "KHRegistry.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "KHHttpClientFactory+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KHRegistry ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Http::Registry>&)cppRef;

@end

@implementation KHRegistry {
    ::djinni::DbxCppWrapperCache<::Kullo::Http::Registry>::Handle _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Http::Registry>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (void)setHttpClientFactory:(nullable id<KHHttpClientFactory>)factory {
    try {
        ::Kullo::Http::Registry::setHttpClientFactory(::ObjCpp::Kullo::Http::HttpClientFactory::toCpp(factory));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Http {

auto Registry::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Registry::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::DbxCppWrapperCache<::Kullo::Http::Registry>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[KHRegistry alloc] initWithCpp:p];
    });
}

} } }  // namespace ObjCpp::Kullo::Http

@end