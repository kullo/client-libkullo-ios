// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#include "kulloclient/api/Syncer.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KASyncer;

namespace ObjCpp { namespace Kullo { namespace Api {

class Syncer
{
public:
    using CppType = std::shared_ptr<::Kullo::Api::Syncer>;
    using ObjcType = KASyncer*;

    using Boxed = Syncer;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

