import Flutter
import UIKit

public class SwiftZpassCryptoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "zpass_crypto", binaryMessenger: registrar.messenger())
    let instance = SwiftZpassCryptoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public static func dummyMethodToEnforceBundling() {
    dummy_method_to_enforce_bundling()
  }

  // 请勿调用该函数，当前声明只是用于强制绑定静态库符号，避免 release 编译时过滤未使用的符号
  public static func declareFunctionName() {
     wire_create_user_key_model(0, nil, nil, nil)
     wire_generate_secret_key()
     wire_new_crypto_service()
     wire_login(0, nil, nil, nil, nil, nil, nil, false)
     wire_relogin(0, nil, nil, nil, nil, false)
     wire_offline_login(nil, nil, nil, nil, nil, nil, false)
     wire_pre_cache_data_key(0, nil, false)
     wire_destory(nil)
     wire_encrypt_text(nil, nil, false)
     wire_decrypt_text(nil, nil, false)
     wire_generate_shared_key(0, nil, 0)
     new_uint_8_list_0(0)
     free_WireSyncReturnStruct(WireSyncReturnStruct())
     store_dart_post_cobject(nil)
     wire_calc_password_hash(nil, nil, nil)
  }

}
