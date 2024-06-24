
import 'package:flutter_application_1/core/failure/failure.dart';
import 'package:flutter_application_1/core/result/result.dart';
import 'package:flutter_application_1/features/weather/domain/entities/description_weather.dart';

abstract class WeatherDescriptionRepository {
  Future<Result<DescriptionWeather,Failure>> getWeather();
}