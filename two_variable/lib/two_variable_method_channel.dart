import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'two_variable_platform_interface.dart';

/// An implementation of [TwoVariablePlatform] that uses method channels.
class MethodChannelTwoVariable extends TwoVariablePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('two_variable');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
