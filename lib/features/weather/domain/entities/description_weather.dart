

class DescriptionWeather {
    final Coord coord;
    final List<WeatherElement> weather;
    final String base;
    final Main main;
    final int visibility;
    final Wind wind;
    final Clouds clouds;
    final int dt;
    final Sys sys;
    final int timezone;
    final int id;
    final String name;
    final int cod;

    DescriptionWeather({
        required this.coord,
        required this.weather,
        required this.base,
        required this.main,
        required this.visibility,
        required this.wind,
        required this.clouds,
        required this.dt,
        required this.sys,
        required this.timezone,
        required this.id,
        required this.name,
        required this.cod,
    });
}

class Clouds {
   final int all;

    Clouds({
        required this.all,
    });

}

class Coord {
    final double lon;
    final double lat;

    Coord({
        required this.lon,
        required this.lat,
    });

}

class Main {
    final double temp;
    final double feelsLike;
    final double tempMin;
    final double tempMax;
    final int pressure;
    final int humidity;
    final int seaLevel;
    final int grndLevel;

    Main({
        required this.temp,
        required this.feelsLike,
        required this.tempMin,
        required this.tempMax,
        required this.pressure,
        required this.humidity,
        required this.seaLevel,
        required this.grndLevel,
    });

}

class Sys {
    final int type;
    final int id;
    final String country;
    final int sunrise;
    final int sunset;

    Sys({
        required this.type,
        required this.id,
        required this.country,
        required this.sunrise,
        required this.sunset,
    });

}

class WeatherElement {
    final int id;
    final String main;
    final String description;
    final String icon;

    WeatherElement({
        required this.id,
        required this.main,
        required this.description,
        required this.icon,
    });

}

class Wind {
    final double speed;
    final int deg;
    final double gust;

    Wind({
        required this.speed,
        required this.deg,
        required this.gust,
    });
}
