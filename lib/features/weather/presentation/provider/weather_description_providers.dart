import 'package:flutter_application_1/core/failure/failure.dart';
import 'package:flutter_application_1/core/result/result.dart';
import 'package:flutter_application_1/features/weather/data/repositories/weather_description_repository_imp.dart';
import 'package:flutter_application_1/features/weather/domain/entities/description_weather.dart';
import 'package:flutter_application_1/features/weather/domain/repositories/weather_description_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/features/weather/data/datasources/weather_description_api_datasource.dart';
import 'package:flutter_application_1/features/weather/data/datasources/weather_description_remotedatasource.dart';

part 'weather_description_providers.g.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final weatherDescriptionRemoteSourceProvider =
    Provider<WeatherDescriptionRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return WeatherDescriptionApiDataSource(dio: dio);
});

final weatherDescriptionRepositoryProvider =
    Provider<WeatherDescriptionRepository>((ref) {
  final remoteSource = ref.watch(weatherDescriptionRemoteSourceProvider);
  return WeatherDescriptionRepositoryImp(remoteSource: remoteSource);
});

@riverpod
Future<DescriptionWeather> descriptionWeather(DescriptionWeatherRef ref) async {
  final repository = ref.watch(weatherDescriptionRepositoryProvider);
  final Result<DescriptionWeather, Failure> resultDescriptionWeather =
      await repository.getWeather();
  if (resultDescriptionWeather is Success) {
    return (resultDescriptionWeather as Success).value;
  }
  {
    throw Exception("Failed to load data");
  }
}
