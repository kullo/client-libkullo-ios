// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client.djinni

#import "KAClient+Private.h"
#import "KAClient.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddressBase+Private.h"
#import "KAAsyncTask+Private.h"
#import "KAClientAddressExistsListener+Private.h"
#import "KAClientCheckCredentialsListener+Private.h"
#import "KAClientCreateSessionListener+Private.h"
#import "KAClientGenerateKeysListener+Private.h"
#import "KAMasterKeyBase+Private.h"
#import "KASessionListener+Private.h"
#include <exception>
#include <stdexcept>
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

+ (nonnull KAClient *)create {
    try {
        auto objcpp_result_ = ::Kullo::Api::Client::create();
        return ::ObjCpp::Kullo::Api::Client::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull KAAsyncTask *)createSessionAsync:(nonnull KAAddress *)address
                                  masterKey:(nonnull KAMasterKey *)masterKey
                                 dbFilePath:(nonnull NSString *)dbFilePath
                            sessionListener:(nonnull id<KASessionListener>)sessionListener
                                   listener:(nonnull id<KAClientCreateSessionListener>)listener {
    try {
        if (sessionListener == nil) {
            throw std::invalid_argument("Got unexpected null parameter 'sessionListener' to function KAClient - (nonnull KAAsyncTask *)createSessionAsync:(nonnull KAAddress *)address masterKey:(nonnull KAMasterKey *)masterKey dbFilePath:(nonnull NSString *)dbFilePath sessionListener:(nonnull id<KASessionListener>)sessionListener listener:(nonnull id<KAClientCreateSessionListener>)listener");
        }
        if (listener == nil) {
            throw std::invalid_argument("Got unexpected null parameter 'listener' to function KAClient - (nonnull KAAsyncTask *)createSessionAsync:(nonnull KAAddress *)address masterKey:(nonnull KAMasterKey *)masterKey dbFilePath:(nonnull NSString *)dbFilePath sessionListener:(nonnull id<KASessionListener>)sessionListener listener:(nonnull id<KAClientCreateSessionListener>)listener");
        }
        auto objcpp_result_ = _cppRefHandle.get()->createSessionAsync(::ObjCpp::Kullo::Api::Address::toCpp(address),
                                                                      ::ObjCpp::Kullo::Api::MasterKey::toCpp(masterKey),
                                                                      ::djinni::String::toCpp(dbFilePath),
                                                                      ::ObjCpp::Kullo::Api::SessionListener::toCpp(sessionListener),
                                                                      ::ObjCpp::Kullo::Api::ClientCreateSessionListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull KAAsyncTask *)addressExistsAsync:(nonnull KAAddress *)address
                                   listener:(nonnull id<KAClientAddressExistsListener>)listener {
    try {
        if (listener == nil) {
            throw std::invalid_argument("Got unexpected null parameter 'listener' to function KAClient - (nonnull KAAsyncTask *)addressExistsAsync:(nonnull KAAddress *)address listener:(nonnull id<KAClientAddressExistsListener>)listener");
        }
        auto objcpp_result_ = _cppRefHandle.get()->addressExistsAsync(::ObjCpp::Kullo::Api::Address::toCpp(address),
                                                                      ::ObjCpp::Kullo::Api::ClientAddressExistsListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull KAAsyncTask *)checkCredentialsAsync:(nonnull KAAddress *)address
                                     masterKey:(nonnull KAMasterKey *)masterKey
                                      listener:(nonnull id<KAClientCheckCredentialsListener>)listener {
    try {
        if (listener == nil) {
            throw std::invalid_argument("Got unexpected null parameter 'listener' to function KAClient - (nonnull KAAsyncTask *)checkCredentialsAsync:(nonnull KAAddress *)address masterKey:(nonnull KAMasterKey *)masterKey listener:(nonnull id<KAClientCheckCredentialsListener>)listener");
        }
        auto objcpp_result_ = _cppRefHandle.get()->checkCredentialsAsync(::ObjCpp::Kullo::Api::Address::toCpp(address),
                                                                         ::ObjCpp::Kullo::Api::MasterKey::toCpp(masterKey),
                                                                         ::ObjCpp::Kullo::Api::ClientCheckCredentialsListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull KAAsyncTask *)generateKeysAsync:(nonnull id<KAClientGenerateKeysListener>)listener {
    try {
        if (listener == nil) {
            throw std::invalid_argument("Got unexpected null parameter 'listener' to function KAClient - (nonnull KAAsyncTask *)generateKeysAsync:(nonnull id<KAClientGenerateKeysListener>)listener");
        }
        auto objcpp_result_ = _cppRefHandle.get()->generateKeysAsync(::ObjCpp::Kullo::Api::ClientGenerateKeysListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSDictionary<NSString *, NSString *> *)versions {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->versions();
        return ::djinni::Map<::djinni::String, ::djinni::String>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}


namespace ObjCpp { namespace Kullo { namespace Api {

auto Client::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        throw std::invalid_argument("Client::toCpp requires non-nil object");
    }
    return kulloForcedNn(objc->_cppRefHandle.get());
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
