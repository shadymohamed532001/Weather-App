import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherModeal
{
  final DateTime date;
  final String weatherstate;
  final double temp;
  final double MaxTemp;
  final double MinTemp;
  final String CityName;

  WeatherModeal({required this.weatherstate, required this.date,required this.temp,required this.MaxTemp,required this.MinTemp,required this.CityName});
 factory WeatherModeal.fromJson({required dynamic Data})
  {
    var JsonData = Data['forecast']['forecastday'][0]['day'];
    return WeatherModeal(
        date:DateTime.parse(Data['location']['localtime']) ,
        temp:JsonData['avgtemp_c'] ,
        MaxTemp:JsonData['maxtemp_c']  ,
        MinTemp: JsonData['mintemp_c'] ,
        CityName:Data['location']['name'],
      weatherstate: JsonData['condition']['text'] ,
    );
  }
  String GetIcon() {
    if (weatherstate == 'Sunny' || weatherstate == 'Thunderstorm') {
      return 'assets/images/thunderstorm.png';
    } else if (weatherstate == 'Snow' || weatherstate == 'Hail') {
      return 'assets/images/snow.png';
    } else if (weatherstate == 'Rainy') {
      return 'assets/images/rainy.png';
    } else
    if (weatherstate == 'Cloudy' || weatherstate == 'Patchy rain possible') {
      return 'assets/images/cloudy.png';
    } else {
      return 'assets/images/clear.png';
    }
  }

  MaterialColor GetColor() {
    if (weatherstate == 'Sunny' || weatherstate == 'Thunderstorm') {
      return Colors.orange;
    } else if (weatherstate == 'Snow' || weatherstate == 'Hail') {
      return Colors.teal;
    } else if (weatherstate == 'Rainy') {
      return Colors.pink;
    } else
    if (weatherstate == 'Cloudy' || weatherstate == 'Patchy rain possible') {
      return Colors.blueGrey;
    } else {
      return Colors.blue;
    }
  }
}