// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHHttpClientFactory+Private.h"
#import "KHHttpClientFactory.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "KHHttpClient+Private.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace ObjCpp { namespace Kullo { namespace Http {

class HttpClientFactory::ObjcProxy final
: public ::Kullo::Http::HttpClientFactory
, public ::djinni::DbxObjcWrapperCache<ObjcProxy>::Handle
{
public:
    using Handle::Handle;
    std::shared_ptr<::Kullo::Http::HttpClient> createHttpClient() override
    {
        @autoreleasepool {
            auto r = [(ObjcType)Handle::get() createHttpClient];
            return ::ObjCpp::Kullo::Http::HttpClient::toCpp(r);
        }
    }
    std::unordered_map<std::string, std::string> versions() override
    {
        @autoreleasepool {
            auto r = [(ObjcType)Handle::get() versions];
            return ::djinni::Map<::djinni::String, ::djinni::String>::toCpp(r);
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
    return ::djinni::DbxObjcWrapperCache<ObjcProxy>::getInstance()->get(objc);
}

auto HttpClientFactory::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

} } }  // namespace ObjCpp::Kullo::Http