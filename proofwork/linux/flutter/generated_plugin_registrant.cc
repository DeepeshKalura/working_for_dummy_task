//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <two_variable/two_variable_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) two_variable_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TwoVariablePlugin");
  two_variable_plugin_register_with_registrar(two_variable_registrar);
}
