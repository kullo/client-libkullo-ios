// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#include "kulloclient/api/MessageAttachmentsContentListener.h"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol KAMessageAttachmentsContentListener;

namespace ObjCpp { namespace Kullo { namespace Api {

class MessageAttachmentsContentListener
{
public:
    using CppType = std::shared_ptr<::Kullo::Api::MessageAttachmentsContentListener>;
    using ObjcType = id<KAMessageAttachmentsContentListener>;

    using Boxed = MessageAttachmentsContentListener;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

} } }  // namespace ObjCpp::Kullo::Api

