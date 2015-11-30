// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KASyncer+Private.h"
#import "KASyncer.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "KAAsyncTask+Private.h"
#import "KASyncerRunListener+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KASyncer ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Syncer>&)cppRef;

@end

@implementation KASyncer {
    ::djinni::DbxCppWrapperCache<::Kullo::Api::Syncer>::Handle _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Syncer>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable KAAsyncTask *)runAsync:(KASyncMode)mode
                          listener:(nullable id<KASyncerRunListener>)listener {
    try {
        auto r = _cppRefHandle.get()->runAsync(::djinni::Enum<::Kullo::Api::SyncMode, KASyncMode>::toCpp(mode),
                                               ::ObjCpp::Kullo::Api::SyncerRunListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable KAAsyncTask *)downloadAttachmentsForMessageAsync:(int64_t)msgId
                                                    listener:(nullable id<KASyncerRunListener>)listener {
    try {
        auto r = _cppRefHandle.get()->downloadAttachmentsForMessageAsync(::djinni::I64::toCpp(msgId),
                                                                         ::ObjCpp::Kullo::Api::SyncerRunListener::toCpp(listener));
        return ::ObjCpp::Kullo::Api::AsyncTask::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Syncer::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Syncer::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::DbxCppWrapperCache<::Kullo::Api::Syncer>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[KASyncer alloc] initWithCpp:p];
    });
}

} } }  // namespace ObjCpp::Kullo::Api

@end
