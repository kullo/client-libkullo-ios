// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHTransferProgress+Private.h"
#import "DJIMarshal+Private.h"
#include <cassert>

namespace ObjCpp { namespace Kullo { namespace Http {

auto TransferProgress::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::I64::toCpp(obj.uploadTransferred),
            ::djinni::I64::toCpp(obj.uploadTotal),
            ::djinni::I64::toCpp(obj.downloadTransferred),
            ::djinni::I64::toCpp(obj.downloadTotal)};
}

auto TransferProgress::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[KHTransferProgress alloc] initWithUploadTransferred:(::djinni::I64::fromCpp(cpp.uploadTransferred))
                                                     uploadTotal:(::djinni::I64::fromCpp(cpp.uploadTotal))
                                             downloadTransferred:(::djinni::I64::fromCpp(cpp.downloadTransferred))
                                                   downloadTotal:(::djinni::I64::fromCpp(cpp.downloadTotal))];
}

} } }  // namespace ObjCpp::Kullo::Http