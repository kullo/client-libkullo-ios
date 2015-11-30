/* Copyright 2015 Kullo GmbH. All rights reserved. */
#import "KIRequestBodyInputStream.h"

@implementation KIRequestBodyInputStream {
    KHRequestListener *requestListener;
    BOOL dataAvailable;

    NSStreamStatus streamStatus;
    id<NSStreamDelegate> delegate;
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
    return delegate;
}

- (void)setDelegate:(id<NSStreamDelegate>)theDelegate
{
    delegate = (theDelegate) ? theDelegate : self;
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
