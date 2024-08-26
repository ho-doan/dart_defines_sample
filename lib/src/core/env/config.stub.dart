// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:same_define/src/core/env/env_enum.dart';
import 'package:same_define/src/core/env/i_config.dart';
import 'dart:js' as js;
import 'dart:html' as html;

class ConfigEnv extends $ConfigEnv {
  @override
  void load() {
    for (final env in Env.values) {
      js.context[env.name] = env.value;
    }
    //Custom DOM event to signal to js the execution of the dart code
    html.document.dispatchEvent(html.CustomEvent("dart_loaded"));
  }
}
