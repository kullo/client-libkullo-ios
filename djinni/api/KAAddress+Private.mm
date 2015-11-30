// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KAAddress+Private.h"
#import "KAAddress.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddress+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAAddress ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Address>&)cppRef;

@end

@implementation KAAddress {
    ::djinni::DbxCppWrapperCache<::Kullo::Api::Address>::Handle _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Address>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable KAAddress *)create:(nonnull NSString *)address {
    try {
        auto r = ::Kullo::Api::Address::create(::djinni::String::toCpp(address));
        return ::ObjCpp::Kullo::Api::Address::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)toString {
    try {
        auto r = _cppRefHandle.get()->toString();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)localPart {
    try {
        auto r = _cppRefHandle.get()->localPart();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)domainPart {
    try {
        auto r = _cppRefHandle.get()->domainPart();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isEqualTo:(nullable KAAddress *)other {
    try {
        auto r = _cppRefHandle.get()->isEqualTo(::ObjCpp::Kullo::Api::Address::toCpp(other));
        return ::djinni::Bool::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isLessThan:(nullable KAAddress *)rhs {
    try {
        auto r = _cppRefHandle.get()->isLessThan(::ObjCpp::Kullo::Api::Address::toCpp(rhs));
        return ::djinni::Bool::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Address::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Address::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::DbxCppWrapperCache<::Kullo::Api::Address>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[KAAddress alloc] initWithCpp:p];
    });
}

} } }  // namespace ObjCpp::Kullo::Api

@end