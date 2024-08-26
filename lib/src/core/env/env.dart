class Env {
  const Env._();

  static const instance = Env._();

  String get appName => const String.fromEnvironment('APP_NAME');
  String get appFlavor => const String.fromEnvironment('APP_FLAVOR');
  String get appWebLink => const String.fromEnvironment('APP_WEB_LINK');
  String get appSuffix => const String.fromEnvironment('APP_ID_SUFFIX');
}
