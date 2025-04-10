import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/constances.dart';
import 'package:weather_app/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}');
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
