// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from usersettings.djinni

#import "KAUserSettings+Private.h"
#import "KAUserSettings.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddress+Private.h"
#import "KADateTimeBase+Private.h"
#import "KAMasterKey+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAUserSettings ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::UserSettings>&)cppRef;

@end

@implementation KAUserSettings {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::UserSettings>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::UserSettings>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable KAAddress *)address {
    try {
        auto r = _cppRefHandle.get()->address();
        return ::ObjCpp::Kullo::Api::Address::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAMasterKey *)masterKey {
    try {
        auto r = _cppRefHandle.get()->masterKey();
        return ::ObjCpp::Kullo::Api::MasterKey::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)name {
    try {
        auto r = _cppRefHandle.get()->name();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setName:(nonnull NSString *)name {
    try {
        _cppRefHandle.get()->setName(::djinni::String::toCpp(name));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)organization {
    try {
        auto r = _cppRefHandle.get()->organization();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setOrganization:(nonnull NSString *)organization {
    try {
        _cppRefHandle.get()->setOrganization(::djinni::String::toCpp(organization));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)footer {
    try {
        auto r = _cppRefHandle.get()->footer();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setFooter:(nonnull NSString *)footer {
    try {
        _cppRefHandle.get()->setFooter(::djinni::String::toCpp(footer));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)avatarMimeType {
    try {
        auto r = _cppRefHandle.get()->avatarMimeType();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setAvatarMimeType:(nonnull NSString *)mimeType {
    try {
        _cppRefHandle.get()->setAvatarMimeType(::djinni::String::toCpp(mimeType));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)avatar {
    try {
        auto r = _cppRefHandle.get()->avatar();
        return ::djinni::Binary::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setAvatar:(nonnull NSData *)avatar {
    try {
        _cppRefHandle.get()->setAvatar(::djinni::Binary::toCpp(avatar));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KADateTime *)nextMasterKeyBackupReminder {
    try {
        auto r = _cppRefHandle.get()->nextMasterKeyBackupReminder();
        return ::djinni::Optional<boost::optional, ::ObjCpp::Kullo::Api::DateTime>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setNextMasterKeyBackupReminder:(nullable KADateTime *)reminderDate {
    try {
        _cppRefHandle.get()->setNextMasterKeyBackupReminder(::djinni::Optional<boost::optional, ::ObjCpp::Kullo::Api::DateTime>::toCpp(reminderDate));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto UserSettings::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto UserSettings::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KAUserSettings>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
