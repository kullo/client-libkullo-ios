// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#include "kulloclient/api/Registry.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KARegistry;

namespace ObjCpp { namespace Kullo { namespace Api {

class Registry
{
public:
    using CppType = std::shared_ptr<::Kullo::Api::Registry>;
    using ObjcType = KARegistry*;

    using Boxed = Registry;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

