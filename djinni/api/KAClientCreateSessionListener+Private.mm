// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KAClientCreateSessionListener+Private.h"
#import "KAClientCreateSessionListener.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "KAAddress+Private.h"
#import "KASession+Private.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace ObjCpp { namespace Kullo { namespace Api {

class ClientCreateSessionListener::ObjcProxy final
: public ::Kullo::Api::ClientCreateSessionListener
, public ::djinni::ObjcProxyCache::Handle<ObjcType>
{
public:
    using Handle::Handle;
    void finished(const std::shared_ptr<::Kullo::Api::Session> & c_session) override
    {
        @autoreleasepool {
            [Handle::get() finished:(::ObjCpp::Kullo::Api::Session::fromCpp(c_session))];
        }
    }
    void error(const std::shared_ptr<::Kullo::Api::Address> & c_address, ::Kullo::Api::LocalError c_error) override
    {
        @autoreleasepool {
            [Handle::get() error:(::ObjCpp::Kullo::Api::Address::fromCpp(c_address))
                           error:(::djinni::Enum<::Kullo::Api::LocalError, KALocalError>::fromCpp(c_error))];
        }
    }
};

} } }  // namespace ObjCpp::Kullo::Api

namespace ObjCpp { namespace Kullo { namespace Api {

auto ClientCreateSessionListener::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto ClientCreateSessionListener::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

} } }  // namespace ObjCpp::Kullo::Api
