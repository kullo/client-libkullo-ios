// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#include "kulloclient/http/HttpClient.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol KHHttpClient;

namespace ObjCpp { namespace Kullo { namespace Http {

class HttpClient
{
public:
    using CppType = std::shared_ptr<::Kullo::Http::HttpClient>;
    using ObjcType = id<KHHttpClient>;

    using Boxed = HttpClient;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Http
