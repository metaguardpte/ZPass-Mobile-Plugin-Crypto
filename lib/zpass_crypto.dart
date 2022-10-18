
import 'package:zpass_crypto/src/ffi.dart';

import 'zpass_crypto_platform_interface.dart';

class ZpassCrypto {
  Future<String?> getPlatformVersion() {
    return ZpassCryptoPlatform.instance.getPlatformVersion();
  }

  Future<String?> generateSecretKey({dynamic hint}) {
    try {
      return Future.value(zpCrypto.generateSecretKey(hint: hint));
    } catch (e) {
      return Future.value(null);
    }
  }

  Future<String?> createUserKeyModel(
      {required String identifierName,
        required String masterPassword,
        required String raw,
        dynamic hint}) {
    try {
      return Future.value(
        zpCrypto.createUserKeyModel(
          identifierName: identifierName,
          masterPassword: masterPassword,
          raw: raw,
          hint: hint,
        ),
      );
    } catch (e) {
     return Future.value(null);
    }
  }

  Future<String?> newCryptoService({dynamic hint}) {
    try {
      return Future.value(zpCrypto.newCryptoService(hint: hint));
    } catch (e) {
      return Future.value(null);
    }
  }

  Future<String?> login(
      {required String clientId,
        required String identifierName,
        required String masterPassword,
        required String secretKey,
        required String host,
        required String headerJson,
        required bool isPersonal,
        dynamic hint}) {
    try {
      return Future.value(
        zpCrypto.login(
            clientId: clientId,
            identifierName: identifierName,
            masterPassword: masterPassword,
            secretKey: secretKey,
            host: host,
            headerJson: headerJson,
            isPersonal: isPersonal,
            hint: hint,
        ),
      );
    } catch (e) {
      return Future.value(null);
    }
  }

  Future<String?> offlineLogin(
      {required String clientId,
        required String identifierName,
        required String masterPassword,
        required String secretKey,
        required String masterKeyHash,
        String? personalDataKey,
        String? enterpriseDataKey,
        required bool isPersonal,
        dynamic hint}) {
    try {
      return Future.value(
        zpCrypto.offlineLogin(
          clientId: clientId,
          identifierName: identifierName,
          masterPassword: masterPassword,
          secretKey: secretKey,
          masterKeyHash: masterKeyHash,
          isPersonal: isPersonal,
          hint: hint,
        ),
      );
    } catch(e) {
      return Future.value(null);
    }
  }

  Future<String?> encryptText(
      {required String clientId,
        required String plaintext,
        required bool isPersonal,
        dynamic hint}) {
    try {
      return Future.value(
        zpCrypto.encryptText(
          clientId: clientId,
          plaintext: plaintext,
          isPersonal: isPersonal,
          hint: hint,
        ),
      );
    } catch (e) {
      return Future.value(null);
    }
  }

  Future<String?> decryptText(
      {required String clientId,
        required String cipherText,
        required bool isPersonal,
        dynamic hint}) {
    try {
      return Future.value(
        zpCrypto.decryptText(
          clientId: clientId,
          cipherText: cipherText,
          isPersonal: isPersonal,
          hint: hint,
        ),
      );
    } catch (e) {
      return Future.value(null);
    }
  }

  Future<String?> destroy({required String clientId, dynamic hint}) {
    try {
      return Future.value(zpCrypto.destory(clientId: clientId, hint: hint));
    } catch (e) {
      return Future.value(null);
    }
  }
}
