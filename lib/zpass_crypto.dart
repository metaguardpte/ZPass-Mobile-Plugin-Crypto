
import 'package:zpass_crypto/src/ffi.dart';

import 'zpass_crypto_platform_interface.dart';

class ZpassCrypto {
  Future<String?> getPlatformVersion() {
    return ZpassCryptoPlatform.instance.getPlatformVersion();
  }

  String? generateSecretKey({dynamic hint}) {
    try {
      return zpCrypto.generateSecretKey(hint: hint);
    } catch (e) {
      return null;
    }
  }

  Future<String?> createUserKeyModel(
      {required String identifierName,
        required String masterPassword,
        required String raw,
        dynamic hint}) async {
    try {
      final resp = zpCrypto.createUserKeyModel(
        identifierName: identifierName,
        masterPassword: masterPassword,
        raw: raw,
        hint: hint,
      );
      return resp;
    } catch (e) {
     return Future.value(null);
    }
  }

  String? newCryptoService({dynamic hint}) {
    try {
      return zpCrypto.newCryptoService(hint: hint);
    } catch (e) {
      return null;
    }
  }

  Future<String?> login (
      {required String clientId,
        required String identifierName,
        required String masterPassword,
        required String secretKey,
        required String host,
        required String headerJson,
        required bool isPersonal,
        dynamic hint}) async {
    try {
      final resp = await zpCrypto.login(
        clientId: clientId,
        identifierName: identifierName,
        masterPassword: masterPassword,
        secretKey: secretKey,
        host: host,
        headerJson: headerJson,
        isPersonal: isPersonal,
        hint: hint,
      );
      return resp;
    } catch (e) {
      return Future.value(null);
    }
  }

  String? offlineLogin(
      {required String clientId,
        required String identifierName,
        required String masterKey,
        required String masterKeyHash,
        String? personalDataKey,
        String? enterpriseDataKey,
        required bool isPersonal,
        dynamic hint}) {
    try {
      return zpCrypto.offlineLogin(
        clientId: clientId,
        identifierName: identifierName,
        masterKey: masterKey,
        masterKeyHash: masterKeyHash,
        personalDataKey: personalDataKey,
        enterpriseDataKey: enterpriseDataKey,
        isPersonal: isPersonal,
        hint: hint,
      );
    } catch(e) {
      return null;
    }
  }

  String? encryptText(
      {required String clientId,
        required String plaintext,
        required bool isPersonal,
        dynamic hint}) {
    try {
      return zpCrypto.encryptText(
        clientId: clientId,
        plaintext: plaintext,
        isPersonal: isPersonal,
        hint: hint,
      );
    } catch (e) {
      return null;
    }
  }

  String? decryptText(
      {required String clientId,
        required String cipherText,
        required bool isPersonal,
        dynamic hint}) {
    try {
      return zpCrypto.decryptText(
        clientId: clientId,
        cipherText: cipherText,
        isPersonal: isPersonal,
        hint: hint,
      );
    } catch (e) {
      return null;
    }
  }

  String? calcPasswordHash(
      {required String identifierName,
        required String masterPassword,
        required String secretKey,
        dynamic hint}) {
    try {
      return zpCrypto.calcPasswordHash(
        identifierName: identifierName,
        masterPassword: masterPassword,
        secretKey: secretKey,
      );
    } catch (e) {
      return null;
    }
  }

  String? destroy({required String clientId, dynamic hint}) {
    try {
      return zpCrypto.destory(clientId: clientId, hint: hint);
    } catch (e) {
      return null;
    }
  }
}
