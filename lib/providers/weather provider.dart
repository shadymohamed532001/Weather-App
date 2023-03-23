import 'package:flutter/cupertino.dart';

import '../modeals/Weather Moedeal.dart';


class WeatherProvider extends ChangeNotifier {
   WeatherModel? _weatherData;

   String? cityName;
   set weatherData(WeatherModel? weather) {
      _weatherData = weather;
      notifyListeners();
   }

   WeatherModel? get weatherData => _weatherData;
}