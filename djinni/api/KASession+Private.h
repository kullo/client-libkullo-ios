// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from session.djinni

#include "kulloclient/api/Session.h"
#include <kulloclient/nn.h>
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KASession;

namespace ObjCpp { namespace Kullo { namespace Api {

class Session
{
public:
    using CppType = ::Kullo::nn_shared_ptr<::Kullo::Api::Session>;
    using CppOptType = std::shared_ptr<::Kullo::Api::Session>;
    using ObjcType = KASession*;

    using Boxed = Session;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

