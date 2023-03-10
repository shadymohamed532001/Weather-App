

import 'package:flutter/material.dart';

import '../modeals/Weather Moedeal.dart';

class Weatherprovider extends ChangeNotifier
{
   WeatherModeal? _WeatherData;
   set WeatherData (WeatherModeal? weather)
   {
      _WeatherData =weather ;
      notifyListeners();
   }
   WeatherModeal? get WeatherData => _WeatherData;




}