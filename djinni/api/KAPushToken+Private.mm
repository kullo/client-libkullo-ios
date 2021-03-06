// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from push.djinni

#import "KAPushToken+Private.h"
#import "DJIMarshal+Private.h"
#import "KAPushTokenEnvironment+Private.h"
#import "KAPushTokenType+Private.h"
#include <cassert>

namespace ObjCpp { namespace Kullo { namespace Api {

auto PushToken::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::Enum<::Kullo::Api::PushTokenType, KAPushTokenType>::toCpp(obj.type),
            ::djinni::String::toCpp(obj.token),
            ::djinni::Enum<::Kullo::Api::PushTokenEnvironment, KAPushTokenEnvironment>::toCpp(obj.environment)};
}

auto PushToken::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[KAPushToken alloc] initWithType:(::djinni::Enum<::Kullo::Api::PushTokenType, KAPushTokenType>::fromCpp(cpp.type))
                                       token:(::djinni::String::fromCpp(cpp.token))
                                 environment:(::djinni::Enum<::Kullo::Api::PushTokenEnvironment, KAPushTokenEnvironment>::fromCpp(cpp.environment))];
}

} } }  // namespace ObjCpp::Kullo::Api
