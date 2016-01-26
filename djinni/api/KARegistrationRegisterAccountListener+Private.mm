// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from registration.djinni

#import "KARegistrationRegisterAccountListener+Private.h"
#import "KARegistrationRegisterAccountListener.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "KAAddress+Private.h"
#import "KAChallenge+Private.h"
#import "KAMasterKey+Private.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace ObjCpp { namespace Kullo { namespace Api {

class RegistrationRegisterAccountListener::ObjcProxy final
: public ::Kullo::Api::RegistrationRegisterAccountListener
, public ::djinni::ObjcProxyCache::Handle<ObjcType>
{
public:
    using Handle::Handle;
    void challengeNeeded(const std::shared_ptr<::Kullo::Api::Address> & c_address, const std::shared_ptr<::Kullo::Api::Challenge> & c_challenge) override
    {
        @autoreleasepool {
            [Handle::get() challengeNeeded:(::ObjCpp::Kullo::Api::Address::fromCpp(c_address))
                                 challenge:(::ObjCpp::Kullo::Api::Challenge::fromCpp(c_challenge))];
        }
    }
    void addressNotAvailable(const std::shared_ptr<::Kullo::Api::Address> & c_address, ::Kullo::Api::AddressNotAvailableReason c_reason) override
    {
        @autoreleasepool {
            [Handle::get() addressNotAvailable:(::ObjCpp::Kullo::Api::Address::fromCpp(c_address))
                                        reason:(::djinni::Enum<::Kullo::Api::AddressNotAvailableReason, KAAddressNotAvailableReason>::fromCpp(c_reason))];
        }
    }
    void finished(const std::shared_ptr<::Kullo::Api::Address> & c_address, const std::shared_ptr<::Kullo::Api::MasterKey> & c_masterKey) override
    {
        @autoreleasepool {
            [Handle::get() finished:(::ObjCpp::Kullo::Api::Address::fromCpp(c_address))
                          masterKey:(::ObjCpp::Kullo::Api::MasterKey::fromCpp(c_masterKey))];
        }
    }
    void error(const std::shared_ptr<::Kullo::Api::Address> & c_address, ::Kullo::Api::NetworkError c_error) override
    {
        @autoreleasepool {
            [Handle::get() error:(::ObjCpp::Kullo::Api::Address::fromCpp(c_address))
                           error:(::djinni::Enum<::Kullo::Api::NetworkError, KANetworkError>::fromCpp(c_error))];
        }
    }
};

} } }  // namespace ObjCpp::Kullo::Api

namespace ObjCpp { namespace Kullo { namespace Api {

auto RegistrationRegisterAccountListener::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto RegistrationRegisterAccountListener::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

} } }  // namespace ObjCpp::Kullo::Api
