// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from session.djinni

#include "kulloclient/api/InternalEvent.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KAInternalEvent;

namespace ObjCpp { namespace Kullo { namespace Api {

class InternalEvent
{
public:
    using CppType = std::shared_ptr<::Kullo::Api::InternalEvent>;
    using CppOptType = std::shared_ptr<::Kullo::Api::InternalEvent>;
    using ObjcType = KAInternalEvent*;

    using Boxed = InternalEvent;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

