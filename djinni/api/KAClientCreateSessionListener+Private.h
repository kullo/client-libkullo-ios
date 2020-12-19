// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client.djinni

#include "kulloclient/api/ClientCreateSessionListener.h"
#include <kulloclient/nn.h>
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol KAClientCreateSessionListener;

namespace ObjCpp { namespace Kullo { namespace Api {

class ClientCreateSessionListener
{
public:
    using CppType = ::Kullo::nn_shared_ptr<::Kullo::Api::ClientCreateSessionListener>;
    using CppOptType = std::shared_ptr<::Kullo::Api::ClientCreateSessionListener>;
    using ObjcType = id<KAClientCreateSessionListener>;

    using Boxed = ClientCreateSessionListener;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

