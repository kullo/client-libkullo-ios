/*
 * Copyright 2015–2019 Kullo GmbH
 *
 * This source code is licensed under the 3-clause BSD license. See LICENSE.txt
 * in the root directory of this source tree for details.
 */
#import "KIRequestBodyInputStream.h"

@implementation KIRequestBodyInputStream {
    KHRequestListener *requestListener;
    BOOL dataAvailable;

    NSStreamStatus streamStatus;
    __weak id<NSStreamDelegate> delegate;
}

- (nullable instancetype)initWithRequestListener:(nonnull KHRequestListener *)theRequestListener
{
    self = [super init];
    if (self)
    {
        requestListener = theRequestListener;
        dataAvailable = YES;
        streamStatus = NSStreamStatusNotOpen;
    }
    return self;
}

#pragma mark NSInputStream

- (NSInteger)read:(nonnull uint8_t *)buffer maxLength:(NSUInteger)len
{
    if (dataAvailable == NO) return 0;

    NSData *dataRead = [requestListener read:len];
    [dataRead getBytes:buffer length:len];
    return dataRead.length;
}

- (BOOL)getBuffer:(uint8_t * _Nullable * _Nonnull)buffer length:(nonnull NSUInteger *)len;
{
    return NO;
}

- (BOOL)hasBytesAvailable
{
    return dataAvailable;
}

#pragma mark NSStream

- (void)open
{
    streamStatus = NSStreamStatusOpen;
}

- (void)close
{
    streamStatus = NSStreamStatusClosed;
}

- (id<NSStreamDelegate>)delegate
{
    return (delegate) ? delegate : self;
}

- (void)setDelegate:(id<NSStreamDelegate>)theDelegate
{
    delegate = theDelegate;
}

- (void)scheduleInRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode {}
- (void)removeFromRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode {}

- (id)propertyForKey:(NSString *)key
{
    return nil;
}

- (BOOL)setProperty:(id)property forKey:(NSString *)key
{
    return NO;
}

- (NSStreamStatus)streamStatus
{
    return streamStatus;
}

- (NSError *)streamError
{
    return nil;
}

@end
