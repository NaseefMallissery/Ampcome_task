import 'dart:developer';
import 'package:appcom_task/model/weather_model.dart';
import 'package:appcom_task/utils/dio_exceptions.dart';
import 'package:dio/dio.dart';


class WeatherService {
  Future<WeatherModel?> getWeather(dynamic lat, dynamic lon) async {
    Dio dio = Dio();
    try {
      final Response response = await dio.get(
        'https://api.weatherapi.com/v1/current.json',
        queryParameters: {
          "key": "c0dbb6f1794640eeabf103014222805",
          "q": "$lat,$lon",
          "aqi": "no",
        },
      );
      if (response.statusCode == 200) {
        if (response.data == null) {
          log("message");
          return null;
        } else {
          final model = WeatherModel.fromJson(response.data);
          return model;
        }
      }
    } catch (e) {
      DioException().dioError(e);

      log(e.toString());
    }
    return null;
  }
}
