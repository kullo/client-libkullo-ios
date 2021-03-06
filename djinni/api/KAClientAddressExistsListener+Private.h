// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client.djinni

#include "kulloclient/api/ClientAddressExistsListener.h"
#include <kulloclient/nn.h>
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol KAClientAddressExistsListener;

namespace ObjCpp { namespace Kullo { namespace Api {

class ClientAddressExistsListener
{
public:
    using CppType = ::Kullo::nn_shared_ptr<::Kullo::Api::ClientAddressExistsListener>;
    using CppOptType = std::shared_ptr<::Kullo::Api::ClientAddressExistsListener>;
    using ObjcType = id<KAClientAddressExistsListener>;

    using Boxed = ClientAddressExistsListener;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

