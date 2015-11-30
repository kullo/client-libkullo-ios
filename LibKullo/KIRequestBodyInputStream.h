/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import <Foundation/Foundation.h>
#import "KHRequestListener.h"

@interface KIRequestBodyInputStream : NSInputStream<NSStreamDelegate>

- (nullable instancetype)initWithRequestListener:(nonnull KHRequestListener *)requestListener;

@end
