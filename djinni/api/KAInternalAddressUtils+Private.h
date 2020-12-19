// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from address.djinni

#include "kulloclient/api/InternalAddressUtils.h"
#include <kulloclient/nn.h>
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KAInternalAddressUtils;

namespace ObjCpp { namespace Kullo { namespace Api {

class InternalAddressUtils
{
public:
    using CppType = ::Kullo::nn_shared_ptr<::Kullo::Api::InternalAddressUtils>;
    using CppOptType = std::shared_ptr<::Kullo::Api::InternalAddressUtils>;
    using ObjcType = KAInternalAddressUtils*;

    using Boxed = InternalAddressUtils;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api
