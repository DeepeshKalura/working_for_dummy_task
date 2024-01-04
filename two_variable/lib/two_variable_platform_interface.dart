import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'two_variable_method_channel.dart';

abstract class TwoVariablePlatform extends PlatformInterface {
  /// Constructs a TwoVariablePlatform.
  TwoVariablePlatform() : super(token: _token);

  static final Object _token = Object();

  static TwoVariablePlatform _instance = MethodChannelTwoVariable();

  /// The default instance of [TwoVariablePlatform] to use.
  ///
  /// Defaults to [MethodChannelTwoVariable].
  static TwoVariablePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TwoVariablePlatform] when
  /// they register themselves.
  static set instance(TwoVariablePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
