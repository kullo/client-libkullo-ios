// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import <Foundation/Foundation.h>

/**
 * Encapsulates the progress of a transfer, measured in bytes.
 * Defaults to 0 if unknown.
 */
@interface KHTransferProgress : NSObject
- (nonnull instancetype)initWithUploadTransferred:(int64_t)uploadTransferred
                                      uploadTotal:(int64_t)uploadTotal
                              downloadTransferred:(int64_t)downloadTransferred
                                    downloadTotal:(int64_t)downloadTotal;
+ (nonnull instancetype)TransferProgressWithUploadTransferred:(int64_t)uploadTransferred
                                                  uploadTotal:(int64_t)uploadTotal
                                          downloadTransferred:(int64_t)downloadTransferred
                                                downloadTotal:(int64_t)downloadTotal;

@property (nonatomic, readonly) int64_t uploadTransferred;

@property (nonatomic, readonly) int64_t uploadTotal;

@property (nonatomic, readonly) int64_t downloadTransferred;

@property (nonatomic, readonly) int64_t downloadTotal;

@end
