import 'package:flutter/services.dart';

class Channel {
  static const String _callNativeChannelKey = 'com.demo.callNativeMethod';
  static const String _callNativePushKey = 'push';
  static const String _callNativePopKey = 'pop';
  static const String _callNativePushRouter = 'router';

  static const MethodChannel _channel = MethodChannel(_callNativeChannelKey);

  /// push
  static Future<T?> push<T>(String router, {Map? arguments}) async {
    return await _channel.invokeMethod<T>(
      _callNativePushKey,
      {
        _callNativePushRouter: router,
        if (arguments?.isNotEmpty == true) ...arguments!,
      },
    );
  }

  /// pop
  static Future<T?> pop<T>() async {
    return await _channel.invokeMethod<T>(_callNativePopKey);
  }
}
