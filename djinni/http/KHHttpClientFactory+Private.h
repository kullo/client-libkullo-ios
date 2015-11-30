// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#include "kulloclient/http/HttpClientFactory.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol KHHttpClientFactory;

namespace ObjCpp { namespace Kullo { namespace Http {

class HttpClientFactory
{
public:
    using CppType = std::shared_ptr<::Kullo::Http::HttpClientFactory>;
    using ObjcType = id<KHHttpClientFactory>;

    using Boxed = HttpClientFactory;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Http

