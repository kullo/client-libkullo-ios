// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KADraftAttachments+Private.h"
#import "KADraftAttachments.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAsyncTask+Private.h"
#import "KADraftAttachmentsAddListener+Private.h"
#import "KADraftAttachmentsContentListener+Private.h"
#import "KADraftAttachmentsSaveToListener+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KADraftAttachments ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::DraftAttachments>&)cppRef;

@end

@implementation KADraftAttachments {
    ::djinni::DbxCppWrapperCache<::Kullo::Api::DraftAttachments>::Handle _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::DraftAttachments>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSArray *)allForDraft:(int64_t)convId {
    try {
        auto r = _cppRefHandle.get()->allForDraft(::djinni::I64::toCpp(convId));
        return ::djinni::List<::djinni::I64>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)addAsync:(int64_t)convId
                              path:(nonnull NSString *)path
                          mimeType:(nonnull NSString *)mimeType
                          listener:(nullable id<KADraftAttachmentsAddListener>)listener {
    try {
        auto r = _cppRefHandle.get()->addAsync(::djinni::I64::toCpp(convId),
                                               ::djinni::String::toCpp(path),
                                               ::djinni::String::toCpp(mimeType),
                                               ::ObjCpp::Kullo::Api::DraftAttachmentsAddListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)remove:(int64_t)convId
         attId:(int64_t)attId {
    try {
        _cppRefHandle.get()->remove(::djinni::I64::toCpp(convId),
                                    ::djinni::I64::toCpp(attId));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)filename:(int64_t)convId
                         attId:(int64_t)attId {
    try {
        auto r = _cppRefHandle.get()->filename(::djinni::I64::toCpp(convId),
                                               ::djinni::I64::toCpp(attId));
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setFilename:(int64_t)convId
              attId:(int64_t)attId
           filename:(nonnull NSString *)filename {
    try {
        _cppRefHandle.get()->setFilename(::djinni::I64::toCpp(convId),
                                         ::djinni::I64::toCpp(attId),
                                         ::djinni::String::toCpp(filename));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)mimeType:(int64_t)convId
                         attId:(int64_t)attId {
    try {
        auto r = _cppRefHandle.get()->mimeType(::djinni::I64::toCpp(convId),
                                               ::djinni::I64::toCpp(attId));
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)size:(int64_t)convId
          attId:(int64_t)attId {
    try {
        auto r = _cppRefHandle.get()->size(::djinni::I64::toCpp(convId),
                                           ::djinni::I64::toCpp(attId));
        return ::djinni::I64::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)hash:(int64_t)convId
                     attId:(int64_t)attId {
    try {
        auto r = _cppRefHandle.get()->hash(::djinni::I64::toCpp(convId),
                                           ::djinni::I64::toCpp(attId));
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)contentAsync:(int64_t)convId
                                 attId:(int64_t)attId
                              listener:(nullable id<KADraftAttachmentsContentListener>)listener {
    try {
        auto r = _cppRefHandle.get()->contentAsync(::djinni::I64::toCpp(convId),
                                                   ::djinni::I64::toCpp(attId),
                                                   ::ObjCpp::Kullo::Api::DraftAttachmentsContentListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)saveToAsync:(int64_t)convId
                                attId:(int64_t)attId
                                 path:(nonnull NSString *)path
                             listener:(nullable id<KADraftAttachmentsSaveToListener>)listener {
    try {
        auto r = _cppRefHandle.get()->saveToAsync(::djinni::I64::toCpp(convId),
                                                  ::djinni::I64::toCpp(attId),
                                                  ::djinni::String::toCpp(path),
                                                  ::ObjCpp::Kullo::Api::DraftAttachmentsSaveToListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto DraftAttachments::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto DraftAttachments::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::DbxCppWrapperCache<::Kullo::Api::DraftAttachments>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[KADraftAttachments alloc] initWithCpp:p];
    });
}

} } }  // namespace ObjCpp::Kullo::Api

@end
