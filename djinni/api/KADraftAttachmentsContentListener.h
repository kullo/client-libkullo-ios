// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from drafts.djinni

#import <Foundation/Foundation.h>


/** Listener used in DraftAttachments.contentAsync() */
@protocol KADraftAttachmentsContentListener

- (void)finished:(int64_t)convId
           attId:(int64_t)attId
         content:(nonnull NSData *)content;

@end
