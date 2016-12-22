// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from taskrunner.djinni

#import "KATask+Private.h"
#import "KATask.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface KATask ()

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Task>&)cppRef;

@end

@implementation KATask {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Kullo::Api::Task>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Kullo::Api::Task>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (void)run {
    try {
        _cppRefHandle.get()->run();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace ObjCpp { namespace Kullo { namespace Api {

auto Task::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Task::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<KATask>(cpp);
}

} } }  // namespace ObjCpp::Kullo::Api

@end
