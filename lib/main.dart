import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/flavors/app_config.dart';
import 'package:flutter_application_1/features/weather/presentation/screens/weather_description_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void runWithAppConfig(AppConfig config) {
  runApp(ProviderScope(child: MyApp(config: config,)));
}

class MyApp extends StatelessWidget {
  final AppConfig config;
  const MyApp({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:WeatherDescriptionScreen(appConfig: config,),
    );
  }
}
