// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#include "kulloclient/api/ClientCreateSessionListener.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol KAClientCreateSessionListener;

namespace ObjCpp { namespace Kullo { namespace Api {

class ClientCreateSessionListener
{
public:
    using CppType = std::shared_ptr<::Kullo::Api::ClientCreateSessionListener>;
    using ObjcType = id<KAClientCreateSessionListener>;

    using Boxed = ClientCreateSessionListener;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

