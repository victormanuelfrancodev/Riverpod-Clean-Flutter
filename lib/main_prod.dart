import 'package:flutter_application_1/core/flavors/app_config.dart';
import 'package:flutter_application_1/main.dart';

void main(){
  final prodConfig = AppConfig(
    appName: 'Weather App Prod',
    flavorName: 'Production',
  );

  runWithAppConfig(prodConfig);
}