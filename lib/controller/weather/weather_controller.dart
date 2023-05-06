import 'package:appcom_task/controller/weather/weather_survice.dart';
import 'package:appcom_task/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:geolocator/geolocator.dart';

class WeatherController extends ChangeNotifier {
  WeatherController() {
    getPosition();
  
  }
  bool isLoading = false;
  bool isLoading2 = false;
  bool isLoading3 = false;

  WeatherModel? weatherList;
  dynamic lat;
  dynamic lon;

  Future<void> getWeather() async {
    isLoading3 = true;
    notifyListeners();

    await WeatherService().getWeather(lat, lon).then(
      (value) {
        if (value != null) {
          getPosition();
          weatherList = value;
          log(weatherList.toString());
          notifyListeners();
          isLoading3 = false;
          notifyListeners();
        } else {
          isLoading3 = false;
          notifyListeners();
        }
      },
    );
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    lat = position.latitude;
    lon = position.longitude;
  }

  Future<Position> getPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    getLocation();

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
  }

}
