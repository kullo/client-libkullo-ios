// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http.djinni

#import "KHRequest.h"
#import "KHResponse.h"
#import <Foundation/Foundation.h>
@class KHRequestListener;
@class KHResponseListener;


@protocol KHHttpClient

/**
 * Synchronously send the given request.
 * Not thread-safe! Use a separate HttpClient instance per thread.
 *
 * * timeout is measured in milliseconds
 * * requestListener must be non-null if method is PATCH, POST or PUT
 * * responseListener may be null
 */
- (nonnull KHResponse *)sendRequest:(nonnull KHRequest *)request
                            timeout:(int64_t)timeout
                    requestListener:(nullable KHRequestListener *)requestListener
                   responseListener:(nullable KHResponseListener *)responseListener;

@end
