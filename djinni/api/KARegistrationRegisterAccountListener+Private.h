// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#include "kulloclient/api/RegistrationRegisterAccountListener.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol KARegistrationRegisterAccountListener;

namespace ObjCpp { namespace Kullo { namespace Api {

class RegistrationRegisterAccountListener
{
public:
    using CppType = std::shared_ptr<::Kullo::Api::RegistrationRegisterAccountListener>;
    using ObjcType = id<KARegistrationRegisterAccountListener>;

    using Boxed = RegistrationRegisterAccountListener;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api
