// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from api.djinni

#import "KADateTime.h"
#import <Foundation/Foundation.h>
@class KAAddress;
@class KAMasterKey;
@class KAUserSettings;


/** Settings specific to the local user */
@interface KAUserSettings : NSObject

+ (nullable KAUserSettings *)create:(nullable KAAddress *)address
                          masterKey:(nullable KAMasterKey *)masterKey;

/** Kullo address (e.g. "john.doe#kullo.net") */
- (nullable KAAddress *)address;

- (nullable KAMasterKey *)masterKey;

/** Real name (e.g. "John Doe"). Defaults to "". */
- (nonnull NSString *)name;

- (void)setName:(nonnull NSString *)name;

/** Organization (e.g. "Doe Inc."). Defaults to "". */
- (nonnull NSString *)organization;

- (void)setOrganization:(nonnull NSString *)organization;

/** Message footer (e.g. "42 Doe Ave., Doetown 12345"). Defaults to "". */
- (nonnull NSString *)footer;

- (void)setFooter:(nonnull NSString *)footer;

/** MIME type of the avatar (e.g. "image/jpeg"). Defaults to "". */
- (nonnull NSString *)avatarMimeType;

- (void)setAvatarMimeType:(nonnull NSString *)mimeType;

/**
 * Binary contents of the avatar image file of type avatarMimeType.
 * Defaults to a zero-length vector.
 */
- (nonnull NSData *)avatar;

- (void)setAvatar:(nonnull NSData *)avatar;

/** Whether the masterKey has been backed up by the user. Defaults to false. */
- (BOOL)keyBackupConfirmed;

/** Sets keyBackupConfirmed to true and nulls keyBackupDontRemindBefore. */
- (void)setKeyBackupConfirmed;

/**
 * When to show the next backup reminder. Returns null if no reminder date
 * is set. Defaults to a date in the past.
 */
- (nullable KADateTime *)keyBackupDontRemindBefore;

- (void)setKeyBackupDontRemindBefore:(nullable KADateTime *)dontRemindBefore;

@end