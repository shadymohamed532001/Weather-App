import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_th/Cubit/Cubit.dart';
import 'package:weatherapp_th/pages/DataPage.dart';
import 'package:weatherapp_th/Widget/CustomDataPage.dart';
import 'package:weatherapp_th/pages/HomePage.dart';
import 'package:weatherapp_th/weather%20servies/weather%20servies.dart';

import 'BlocObserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(
    BlocProvider(
      create: (context) {
        return WeatherCubit(service: WeatherService());
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) =>  HomePage(),
        DataPage.id: (context) => DataPage(),
        CustomDataPage.id : (context)=> CustomDataPage(),
      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}
