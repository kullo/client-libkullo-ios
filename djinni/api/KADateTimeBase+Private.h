// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from datetime.djinni

#import "KADateTime.h"
#include "kulloclient/api/../DateTime.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class KADateTime;

namespace ObjCpp { namespace Kullo { namespace Api {

struct DateTime
{
    using CppType = ::Kullo::Api::DateTime;
    using ObjcType = KADateTime*;

    using Boxed = DateTime;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);
};

} } }  // namespace ObjCpp::Kullo::Api
