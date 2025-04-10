import 'package:flutter/material.dart';
import 'package:weather_app/weather/data/datasource/remote_datasource.dart';
import 'package:weather_app/weather/data/repository/weather_repository.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repository/base_weather_repository.dart';
import 'package:weather_app/weather/domain/usecases/get_weather_by_country.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteDataSource);
  Weather weather =
      await GetWeatherByCountryName(baseWeatherRepository).execute("Egypt");
  runApp(MyApp(
    weather: weather,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(weather.id.toString()),
              Text(weather.cityName),
              Text(weather.main),
              Text(weather.description),
              Text(weather.pressure.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
