// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHResponse.h"
#include "kulloclient/http/Response.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KHResponse;

namespace ObjCpp { namespace Kullo { namespace Http {

struct Response
{
    using CppType = ::Kullo::Http::Response;
    using ObjcType = KHResponse*;

    using Boxed = Response;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);
};

} } }  // namespace ObjCpp::Kullo::Http
