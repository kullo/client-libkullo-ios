/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import "KAMasterKey.h"
#import "KAInternalMasterKeyUtils.h"

@implementation KAMasterKey

- (nonnull instancetype)initWithBlocks:(nonnull NSArray<NSString *> *)blocks
{
    if (self = [super initWithBlocks:blocks])
    {
        if (![KAInternalMasterKeyUtils isValid:blocks])
        {
            [NSException raise:@"Invalid MasterKey" format:@"%@", blocks];
        }
    }
    return self;
}

@end
