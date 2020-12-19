/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import "KAAddress.h"
#import "KAInternalAddressUtils.h"

@implementation KAAddress

- (nonnull instancetype)initWithLocalPart:(nonnull NSString *)localPart
                               domainPart:(nonnull NSString *)domainPart
{
    if (self = [super initWithLocalPart:localPart domainPart:domainPart])
    {
        if (![KAInternalAddressUtils isValid:localPart domainPart:domainPart])
        {
            [NSException raise:@"Invalid Address" format:@"%@#%@",
             localPart, domainPart];
        }
    }
    return self;
}

- (nonnull NSString *)description;
{
    return [NSString stringWithFormat:@"%@#%@",
            self.localPart,
            self.domainPart];
}

@end
