// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KARegistration+Private.h"
#import "KARegistration.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAddress+Private.h"
#import "KAAsyncTask+Private.h"
#import "KAChallenge+Private.h"
#import "KARegistrationRegisterAccountListener+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KARegistration ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Registration>&)cppRef;

@end

@implementation KARegistration {
    ::djinni::DbxCppWrapperCache<::Kullo::Api::Registration>::Handle _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Registration>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable KAAsyncTask *)registerAccountAsync:(nullable KAAddress *)address
                                     challenge:(nullable KAChallenge *)challenge
                               challengeAnswer:(nonnull NSString *)challengeAnswer
                                      listener:(nullable id<KARegistrationRegisterAccountListener>)listener {
    try {
        auto r = _cppRefHandle.get()->registerAccountAsync(::ObjCpp::Kullo::Api::Address::toCpp(address),
                                                           ::ObjCpp::Kullo::Api::Challenge::toCpp(challenge),
                                                           ::djinni::String::toCpp(challengeAnswer),
                                                           ::ObjCpp::Kullo::Api::RegistrationRegisterAccountListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Registration::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Registration::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::DbxCppWrapperCache<::Kullo::Api::Registration>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[KARegistration alloc] initWithCpp:p];
    });
}

} } }  // namespace ObjCpp::Kullo::Api

@end
