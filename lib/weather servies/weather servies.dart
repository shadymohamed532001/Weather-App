import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modeals/Weather Moedeal.dart';

class WeatherServies{
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'a59d9bb344994444af5145447232901';
  Future<WeatherModeal?> WeatherGetData({required String CityName})async
  {
    WeatherModeal? weather ;
    try {
      Uri Url = Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$CityName&days=3');
      http.Response response = await  http.get(Url);
      Map<String,dynamic>Data = jsonDecode(response.body);
      weather = WeatherModeal.fromJson(Data: Data);
    }catch(e)
    {
      print(e);
    }
    return weather;
  }
}