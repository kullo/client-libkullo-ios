// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KADraftAttachmentsSaveToListener+Private.h"
#import "KADraftAttachmentsSaveToListener.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace ObjCpp { namespace Kullo { namespace Api {

class DraftAttachmentsSaveToListener::ObjcProxy final
: public ::Kullo::Api::DraftAttachmentsSaveToListener
, public ::djinni::DbxObjcWrapperCache<ObjcProxy>::Handle
{
public:
    using Handle::Handle;
    void finished(int64_t c_convId, int64_t c_attId, const std::string & c_path) override
    {
        @autoreleasepool {
            [(ObjcType)Handle::get() finished:(::djinni::I64::fromCpp(c_convId))
                                        attId:(::djinni::I64::fromCpp(c_attId))
                                         path:(::djinni::String::fromCpp(c_path))];
        }
    }
    void error(int64_t c_convId, int64_t c_attId, const std::string & c_path, ::Kullo::Api::LocalError c_error) override
    {
        @autoreleasepool {
            [(ObjcType)Handle::get() error:(::djinni::I64::fromCpp(c_convId))
                                     attId:(::djinni::I64::fromCpp(c_attId))
                                      path:(::djinni::String::fromCpp(c_path))
                                     error:(::djinni::Enum<::Kullo::Api::LocalError, KALocalError>::fromCpp(c_error))];
        }
    }
};

} } }  // namespace ObjCpp::Kullo::Api

namespace ObjCpp { namespace Kullo { namespace Api {

auto DraftAttachmentsSaveToListener::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::DbxObjcWrapperCache<ObjcProxy>::getInstance()->get(objc);
}

auto DraftAttachmentsSaveToListener::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

} } }  // namespace ObjCpp::Kullo::Api
