// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHHttpClientFactory+Private.h"
#import "KHHttpClientFactory.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "KHHttpClient+Private.h"
#include <stdexcept>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace ObjCpp { namespace Kullo { namespace Http {

class HttpClientFactory::ObjcProxy final
: public ::Kullo::Http::HttpClientFactory
, private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::ObjCpp::Kullo::Http::HttpClientFactory;
public:
    using ObjcProxyBase::ObjcProxyBase;
    std::shared_ptr<::Kullo::Http::HttpClient> createHttpClient() override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() createHttpClient];
            return ::ObjCpp::Kullo::Http::HttpClient::toCpp(objcpp_result_);
        }
    }
    std::unordered_map<std::string, std::string> versions() override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() versions];
            return ::djinni::Map<::djinni::String, ::djinni::String>::toCpp(objcpp_result_);
        }
    }
};

} } }  // namespace ObjCpp::Kullo::Http

namespace ObjCpp { namespace Kullo { namespace Http {

auto HttpClientFactory::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto HttpClientFactory::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).djinni_private_get_proxied_objc_object();
}

} } }  // namespace ObjCpp::Kullo::Http
