// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#include "kulloclient/http/Registry.h"
#include <kulloclient/nn.h>
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KHRegistry;

namespace ObjCpp { namespace Kullo { namespace Http {

class Registry
{
public:
    using CppType = ::Kullo::nn_shared_ptr<::Kullo::Http::Registry>;
    using CppOptType = std::shared_ptr<::Kullo::Http::Registry>;
    using ObjcType = KHRegistry*;

    using Boxed = Registry;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Http

