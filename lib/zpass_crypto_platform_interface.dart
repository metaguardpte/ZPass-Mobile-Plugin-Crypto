import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'zpass_crypto_method_channel.dart';

abstract class ZpassCryptoPlatform extends PlatformInterface {
  /// Constructs a ZpassCryptoPlatform.
  ZpassCryptoPlatform() : super(token: _token);

  static final Object _token = Object();

  static ZpassCryptoPlatform _instance = MethodChannelZpassCrypto();

  /// The default instance of [ZpassCryptoPlatform] to use.
  ///
  /// Defaults to [MethodChannelZpassCrypto].
  static ZpassCryptoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ZpassCryptoPlatform] when
  /// they register themselves.
  static set instance(ZpassCryptoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
