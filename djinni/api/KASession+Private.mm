// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KASession+Private.h"
#import "KASession.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAsyncTask+Private.h"
#import "KAConversations+Private.h"
#import "KADraftAttachments+Private.h"
#import "KADrafts+Private.h"
#import "KAEvent+Private.h"
#import "KAInternalEvent+Private.h"
#import "KAMessageAttachments+Private.h"
#import "KAMessages+Private.h"
#import "KASenders+Private.h"
#import "KASessionAccountInfoListener+Private.h"
#import "KASyncer+Private.h"
#import "KAUserSettings+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KASession ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Session>&)cppRef;

@end

@implementation KASession {
    ::djinni::DbxCppWrapperCache<::Kullo::Api::Session>::Handle _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Session>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable KAUserSettings *)userSettings {
    try {
        auto r = _cppRefHandle.get()->userSettings();
        return ::ObjCpp::Kullo::Api::UserSettings::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAConversations *)conversations {
    try {
        auto r = _cppRefHandle.get()->conversations();
        return ::ObjCpp::Kullo::Api::Conversations::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAMessages *)messages {
    try {
        auto r = _cppRefHandle.get()->messages();
        return ::ObjCpp::Kullo::Api::Messages::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAMessageAttachments *)messageAttachments {
    try {
        auto r = _cppRefHandle.get()->messageAttachments();
        return ::ObjCpp::Kullo::Api::MessageAttachments::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KASenders *)senders {
    try {
        auto r = _cppRefHandle.get()->senders();
        return ::ObjCpp::Kullo::Api::Senders::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KADrafts *)drafts {
    try {
        auto r = _cppRefHandle.get()->drafts();
        return ::ObjCpp::Kullo::Api::Drafts::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KADraftAttachments *)draftAttachments {
    try {
        auto r = _cppRefHandle.get()->draftAttachments();
        return ::ObjCpp::Kullo::Api::DraftAttachments::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KASyncer *)syncer {
    try {
        auto r = _cppRefHandle.get()->syncer();
        return ::ObjCpp::Kullo::Api::Syncer::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)accountInfoAsync:(nullable id<KASessionAccountInfoListener>)listener {
    try {
        auto r = _cppRefHandle.get()->accountInfoAsync(::ObjCpp::Kullo::Api::SessionAccountInfoListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray *)notify:(nullable KAInternalEvent *)internalEvent {
    try {
        auto r = _cppRefHandle.get()->notify(::ObjCpp::Kullo::Api::InternalEvent::toCpp(internalEvent));
        return ::djinni::List<::ObjCpp::Kullo::Api::Event>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Session::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Session::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::DbxCppWrapperCache<::Kullo::Api::Session>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[KASession alloc] initWithCpp:p];
    });
}

} } }  // namespace ObjCpp::Kullo::Api

@end
