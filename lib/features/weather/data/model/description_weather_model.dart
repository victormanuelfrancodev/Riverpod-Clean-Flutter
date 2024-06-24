import 'package:flutter_application_1/features/weather/domain/entities/description_weather.dart';

class DescriptionWeatherModel extends DescriptionWeather {
  DescriptionWeatherModel({
    required super.coord,
    required super.weather,
    required super.base,
    required super.main,
    required super.visibility,
    required super.wind,
    required super.clouds,
    required super.dt,
    required super.sys,
    required super.timezone,
    required super.id,
    required super.name,
    required super.cod,
  });

  factory DescriptionWeatherModel.fromJson(Map<String, dynamic> json) {
    return DescriptionWeatherModel(
      coord: CoordModel.fromJson(json['coord']),
      weather: (json['weather'] as List)
          .map((e) => WeatherElementModel.fromJson(e))
          .toList(),
      base: json['base'],
      main: MainModel.fromJson(json['main']),
      visibility: json['visibility'],
      wind: WindModel.fromJson(json['wind']),
      clouds: CloudsModel.fromJson(json['clouds']),
      dt: json['dt'],
      sys: SysModel.fromJson(json['sys']),
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }
}

class MainModel extends Main {
  MainModel({
    required super.temp,
    required super.feelsLike,
    required super.tempMin,
    required super.tempMax,
    required super.pressure,
    required super.humidity,
    required super.seaLevel,
    required super.grndLevel,
  });

  factory MainModel.fromJson(Map<String, dynamic> json) {
    return MainModel(
      temp: json['temp'].toDouble(),
      feelsLike: json['feels_like'].toDouble(),
      tempMin: json['temp_min'].toDouble(),
      tempMax: json['temp_max'].toDouble(),
      pressure: json['pressure'],
      humidity: json['humidity'],
      seaLevel: json['sea_level'],
      grndLevel: json['grnd_level'],
    );
  }
}

class CoordModel extends Coord {
  CoordModel({required super.lon, required super.lat});

  factory CoordModel.fromJson(Map<String, dynamic> json) {
    return CoordModel(lon: json['lon'], lat: json['lat']);
  }
}

class WindModel extends Wind {
  WindModel({required super.speed, required super.deg, required super.gust});

  factory WindModel.fromJson(Map<String, dynamic> json) {
    return WindModel(
      speed: json['speed'].toDouble(),
      deg: json['deg'],
      gust: json['gust'].toDouble(),
    );
  }
}

class SysModel extends Sys {
  SysModel({
    required super.type,
    required super.id,
    required super.country,
    required super.sunrise,
    required super.sunset,
  });

  factory SysModel.fromJson(Map<String, dynamic> json) {
    return SysModel(
      type: json['type'],
      id: json['id'],
      country: json['country'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }
}

class WeatherElementModel extends WeatherElement {
  WeatherElementModel({
    required super.id,
    required super.main,
    required super.description,
    required super.icon,
  });

  factory WeatherElementModel.fromJson(Map<String, dynamic> json) {
    return WeatherElementModel(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon'],
    );
  }
}

class CloudsModel extends Clouds {
  CloudsModel({required super.all});

  factory CloudsModel.fromJson(Map<String, dynamic> json) {
    return CloudsModel(all: json['all']);
  }
}

