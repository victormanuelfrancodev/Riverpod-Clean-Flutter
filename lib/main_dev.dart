import 'package:flutter_application_1/core/flavors/app_config.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  final prodConfig = AppConfig(appName: 'Dev', flavorName: 'Development');

  runWithAppConfig(prodConfig);
}
