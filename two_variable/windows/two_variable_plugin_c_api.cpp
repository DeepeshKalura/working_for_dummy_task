#include "include/two_variable/two_variable_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "two_variable_plugin.h"

void TwoVariablePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  two_variable::TwoVariablePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
