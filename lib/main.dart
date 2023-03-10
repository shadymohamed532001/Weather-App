

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp_th/pages/home%20page.dart';
import 'package:weatherapp_th/providers/weather%20provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (BuildContext context)
      {
        return Weatherprovider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch : Provider.of<Weatherprovider>(context).WeatherData == null ? Colors.blue : Provider.of<Weatherprovider>(context).WeatherData!.GetColor()
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScrean()
    );
  }
}
