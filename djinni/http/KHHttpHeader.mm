// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHHttpHeader.h"


@implementation KHHttpHeader

- (nonnull instancetype)initWithKey:(nonnull NSString *)key
                              value:(nonnull NSString *)value
{
    if (self = [super init]) {
        _key = [key copy];
        _value = [value copy];
    }
    return self;
}

+ (nonnull instancetype)HttpHeaderWithKey:(nonnull NSString *)key
                                    value:(nonnull NSString *)value
{
    return [[self alloc] initWithKey:key
                               value:value];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p key:%@ value:%@>", self.class, self, self.key, self.value];
}

@end
