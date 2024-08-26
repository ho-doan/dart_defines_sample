enum Env {
  appName(String.fromEnvironment('APP_NAME')),
  appFlavor(String.fromEnvironment('APP_FLAVOR')),
  appWebLink(String.fromEnvironment('APP_WEB_LINK')),
  appSuffix(String.fromEnvironment('APP_ID_SUFFIX'));

  const Env(this.value);
  final String value;
}

const env = [];
