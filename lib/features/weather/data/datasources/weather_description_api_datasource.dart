import 'package:dio/dio.dart';
import 'package:flutter_application_1/features/weather/data/datasources/weather_description_remotedatasource.dart';
import 'package:flutter_application_1/features/weather/data/model/description_weather_model.dart';

class WeatherDescriptionApiDataSource
    implements WeatherDescriptionRemoteSource {
  WeatherDescriptionApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<DescriptionWeatherModel> getWeather() async{
    try {
      final response = await _dio.get(
          "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=");
      if(response.statusCode == 200){
        return DescriptionWeatherModel.fromJson(response.data);
      }
      throw Exception("Failed to load data");
    } catch (e) {
      throw Exception();
    }
  }
}
