// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from address.djinni

#import "KAAddress.h"


@implementation KAAddressBase

- (nonnull instancetype)initWithLocalPart:(nonnull NSString *)localPart
                               domainPart:(nonnull NSString *)domainPart
{
    if (self = [super init]) {
        _localPart = [localPart copy];
        _domainPart = [domainPart copy];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p localPart:%@ domainPart:%@>", self.class, (void *)self, self.localPart, self.domainPart];
}

@end
