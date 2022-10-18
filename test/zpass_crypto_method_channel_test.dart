import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zpass_crypto/zpass_crypto_method_channel.dart';

void main() {
  MethodChannelZpassCrypto platform = MethodChannelZpassCrypto();
  const MethodChannel channel = MethodChannel('zpass_crypto');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
