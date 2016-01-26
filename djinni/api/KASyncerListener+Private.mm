// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from syncer.djinni

#import "KASyncerListener+Private.h"
#import "KASyncerListener.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "KASyncProgress+Private.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace ObjCpp { namespace Kullo { namespace Api {

class SyncerListener::ObjcProxy final
: public ::Kullo::Api::SyncerListener
, public ::djinni::ObjcProxyCache::Handle<ObjcType>
{
public:
    using Handle::Handle;
    void started() override
    {
        @autoreleasepool {
            [Handle::get() started];
        }
    }
    void draftAttachmentsTooBig(int64_t c_convId) override
    {
        @autoreleasepool {
            [Handle::get() draftAttachmentsTooBig:(::djinni::I64::fromCpp(c_convId))];
        }
    }
    void progressed(const ::Kullo::Api::SyncProgress & c_progress) override
    {
        @autoreleasepool {
            [Handle::get() progressed:(::ObjCpp::Kullo::Api::SyncProgress::fromCpp(c_progress))];
        }
    }
    void finished() override
    {
        @autoreleasepool {
            [Handle::get() finished];
        }
    }
    void error(::Kullo::Api::NetworkError c_error) override
    {
        @autoreleasepool {
            [Handle::get() error:(::djinni::Enum<::Kullo::Api::NetworkError, KANetworkError>::fromCpp(c_error))];
        }
    }
};

} } }  // namespace ObjCpp::Kullo::Api

namespace ObjCpp { namespace Kullo { namespace Api {

auto SyncerListener::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto SyncerListener::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

} } }  // namespace ObjCpp::Kullo::Api