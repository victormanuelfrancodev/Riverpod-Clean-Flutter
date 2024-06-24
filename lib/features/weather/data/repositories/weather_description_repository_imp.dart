
import 'package:flutter_application_1/core/failure/failure.dart';
import 'package:flutter_application_1/core/result/result.dart';
import 'package:flutter_application_1/features/weather/data/datasources/weather_description_remotedatasource.dart';
import 'package:flutter_application_1/features/weather/domain/entities/description_weather.dart';
import 'package:flutter_application_1/features/weather/domain/repositories/weather_description_repository.dart';

class WeatherDescriptionRepositoryImp implements WeatherDescriptionRepository{
   WeatherDescriptionRepositoryImp({
      required WeatherDescriptionRemoteSource remoteSource,
   }): _remoteSource = remoteSource;
   final WeatherDescriptionRemoteSource _remoteSource;

  @override
  Future<Result<DescriptionWeather, Failure>> getWeather() async{
    try{
      final weather = await _remoteSource.getWeather();
      return Success(weather);
    }catch(e){
      return Error(Failure(e.toString()));
    }
  }
   
}