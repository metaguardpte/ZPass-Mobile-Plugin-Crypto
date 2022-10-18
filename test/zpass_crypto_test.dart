import 'package:flutter_test/flutter_test.dart';
import 'package:zpass_crypto/zpass_crypto.dart';
import 'package:zpass_crypto/zpass_crypto_platform_interface.dart';
import 'package:zpass_crypto/zpass_crypto_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockZpassCryptoPlatform
    with MockPlatformInterfaceMixin
    implements ZpassCryptoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZpassCryptoPlatform initialPlatform = ZpassCryptoPlatform.instance;

  test('$MethodChannelZpassCrypto is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZpassCrypto>());
  });

  test('getPlatformVersion', () async {
    ZpassCrypto zpassCryptoPlugin = ZpassCrypto();
    MockZpassCryptoPlatform fakePlatform = MockZpassCryptoPlatform();
    ZpassCryptoPlatform.instance = fakePlatform;

    expect(await zpassCryptoPlugin.getPlatformVersion(), '42');
  });
}
