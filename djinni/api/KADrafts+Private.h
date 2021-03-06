// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from drafts.djinni

#include "kulloclient/api/Drafts.h"
#include <kulloclient/nn.h>
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KADrafts;

namespace ObjCpp { namespace Kullo { namespace Api {

class Drafts
{
public:
    using CppType = ::Kullo::nn_shared_ptr<::Kullo::Api::Drafts>;
    using CppOptType = std::shared_ptr<::Kullo::Api::Drafts>;
    using ObjcType = KADrafts*;

    using Boxed = Drafts;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

