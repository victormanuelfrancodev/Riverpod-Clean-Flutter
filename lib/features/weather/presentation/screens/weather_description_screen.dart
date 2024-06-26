import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/flavors/app_config.dart';
import 'package:flutter_application_1/features/weather/domain/entities/description_weather.dart';
import 'package:flutter_application_1/features/weather/presentation/provider/weather_description_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherDescriptionScreen extends ConsumerWidget {
  const WeatherDescriptionScreen({super.key, required this.appConfig});

  final AppConfig appConfig;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherDescription = ref.watch(descriptionWeatherProvider);
    return Scaffold(
        appBar: AppBar(title: Text(appConfig.appName)),
        body: Center(
          child: weatherDescription.when(
              data: (data) {
                final DescriptionWeather weather = data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(weather.name),
                    Text(weather.main.temp.toString()),
                  ],
                );
              },
              error: (error, stack) => const Text("Error"),
              loading: () => const CircularProgressIndicator()),
        ));
  }
}
