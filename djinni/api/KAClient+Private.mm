// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KAClient+Private.h"
#import "KAClient.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddress+Private.h"
#import "KAAsyncTask+Private.h"
#import "KAClient+Private.h"
#import "KAClientAddressExistsListener+Private.h"
#import "KAClientCheckCredentialsListener+Private.h"
#import "KAClientCreateSessionListener+Private.h"
#import "KAClientGenerateKeysListener+Private.h"
#import "KAMasterKey+Private.h"
#import "KASessionListener+Private.h"
#import "KAUserSettings+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KAClient ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Client>&)cppRef;

@end

@implementation KAClient {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::Client>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Client>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable KAClient *)create {
    try {
        auto r = ::Kullo::Api::Client::create();
        return ::ObjCpp::Kullo::Api::Client::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)createSessionAsync:(nullable KAUserSettings *)settings
                                  dbFilePath:(nonnull NSString *)dbFilePath
                             sessionListener:(nullable id<KASessionListener>)sessionListener
                                    listener:(nullable id<KAClientCreateSessionListener>)listener {
    try {
        auto r = _cppRefHandle.get()->createSessionAsync(::ObjCpp::Kullo::Api::UserSettings::toCpp(settings),
                                                         ::djinni::String::toCpp(dbFilePath),
                                                         ::ObjCpp::Kullo::Api::SessionListener::toCpp(sessionListener),
                                                         ::ObjCpp::Kullo::Api::ClientCreateSessionListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)addressExistsAsync:(nullable KAAddress *)address
                                    listener:(nullable id<KAClientAddressExistsListener>)listener {
    try {
        auto r = _cppRefHandle.get()->addressExistsAsync(::ObjCpp::Kullo::Api::Address::toCpp(address),
                                                         ::ObjCpp::Kullo::Api::ClientAddressExistsListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)checkCredentialsAsync:(nullable KAAddress *)address
                                      masterKey:(nullable KAMasterKey *)masterKey
                                       listener:(nullable id<KAClientCheckCredentialsListener>)listener {
    try {
        auto r = _cppRefHandle.get()->checkCredentialsAsync(::ObjCpp::Kullo::Api::Address::toCpp(address),
                                                            ::ObjCpp::Kullo::Api::MasterKey::toCpp(masterKey),
                                                            ::ObjCpp::Kullo::Api::ClientCheckCredentialsListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)generateKeysAsync:(nullable id<KAClientGenerateKeysListener>)listener {
    try {
        auto r = _cppRefHandle.get()->generateKeysAsync(::ObjCpp::Kullo::Api::ClientGenerateKeysListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSDictionary<NSString *, NSString *> *)versions {
    try {
        auto r = _cppRefHandle.get()->versions();
        return ::djinni::Map<::djinni::String, ::djinni::String>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Client::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Client::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KAClient>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
