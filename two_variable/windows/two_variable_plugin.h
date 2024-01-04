#ifndef FLUTTER_PLUGIN_TWO_VARIABLE_PLUGIN_H_
#define FLUTTER_PLUGIN_TWO_VARIABLE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace two_variable {

class TwoVariablePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TwoVariablePlugin();

  virtual ~TwoVariablePlugin();

  // Disallow copy and assign.
  TwoVariablePlugin(const TwoVariablePlugin&) = delete;
  TwoVariablePlugin& operator=(const TwoVariablePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace two_variable

#endif  // FLUTTER_PLUGIN_TWO_VARIABLE_PLUGIN_H_
