#import "ZpassCryptoPlugin.h"
#if __has_include(<zpass_crypto/zpass_crypto-Swift.h>)
#import <zpass_crypto/zpass_crypto-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "zpass_crypto-Swift.h"
#endif

@implementation ZpassCryptoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftZpassCryptoPlugin registerWithRegistrar:registrar];
}
@end
