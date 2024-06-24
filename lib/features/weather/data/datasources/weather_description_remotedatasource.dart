
import 'package:flutter_application_1/features/weather/domain/entities/description_weather.dart';

abstract class WeatherDescriptionRemoteSource{
  Future<DescriptionWeather> getWeather();
}