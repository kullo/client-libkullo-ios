/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import <Foundation/Foundation.h>
#import "KHRequestListener.h"

@interface KIRequestBodyInputStream : NSInputStream<NSStreamDelegate>

- (nullable instancetype)initWithRequestListener:(nonnull KHRequestListener *)requestListener;

@end
