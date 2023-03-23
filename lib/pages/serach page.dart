import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_th/Widget/CustomTextFormFiled.dart';
import '../Cubit/Cubit.dart';
import '../Widget/CustomBottomSheet.dart';
import '../Widget/CustomMenuIcon.dart';
import '../modeals/Weather Moedeal.dart';
import '../weather servies/weather servies.dart';
import 'DataPage.dart';

class SearchPage extends StatelessWidget {
  static String id = 'SearchPage';
  String? cityName;
  final scaffoldKey =new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey ,
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onChanged: (data) {},
              onSubmitted: (data) async {
                cityName = data;
                BlocProvider.of<WeatherCubit>(context)
                    .GetWeather(CityName: cityName!);
                BlocProvider.of<WeatherCubit>(context).cityName = cityName;
                Navigator.pushNamed(context, DataPage.id);
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                label: const Text('search'),
                // suffixIcon: GestureDetector(
                //     onTap: () async {
                //       WeatherService service = WeatherService();
                //
                //       WeatherModel? weather =
                //           await service.getWeather(cityName: cityName!);
                //
                //       Provider.of<WeatherProvider>(context, listen: false)
                //           .weatherData = weather;
                //       Provider.of<WeatherProvider>(context, listen: false)
                //           .cityName = cityName;
                //
                //       Navigator.pop(context);
                //     },
                //     child: const Icon(Icons.search)),
                border: const OutlineInputBorder(),
                hintText: 'Enter a city',
              ),
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          scaffoldKey.currentState!.showBottomSheet((context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
                child: Column(
                  children: [
                    Text(
                       'cityName',
                      style: TextStyle(
                        color: Colors.white,)
                    ),
                    TextField(
                      onChanged: (data) {},
                      onSubmitted: (data) async {
                        cityName = data;
                        BlocProvider.of<WeatherCubit>(context)
                            .GetWeather(CityName: cityName!);
                        BlocProvider.of<WeatherCubit>(context).cityName = cityName;
                        Navigator.pushNamed(context, DataPage.id);
                      },
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                        label: const Text('search'),
                        // suffixIcon: GestureDetector(
                        //     onTap: () async {
                        //       WeatherService service = WeatherService();
                        //
                        //       WeatherModel? weather =
                        //           await service.getWeather(cityName: cityName!);
                        //
                        //       Provider.of<WeatherProvider>(context, listen: false)
                        //           .weatherData = weather;
                        //       Provider.of<WeatherProvider>(context, listen: false)
                        //           .cityName = cityName;
                        //
                        //       Navigator.pop(context);
                        //     },
                        //     child: const Icon(Icons.search)),
                        border: const OutlineInputBorder(),
                        hintText: 'Enter a city',
                      ),
                    ),                  ],
                ),
              ),
            );
          });

        },
        child: Icon(
          Icons.ac_unit
        ),
      ),
    );
  }
}


//Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0.0,
//         ),
//         body: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 MenuIcon(
//                   color: Colors.black,
//                   onTap: () {
//                     showModalBottomSheet(
//                         backgroundColor: Colors.transparent,
//                         context: context,
//                         builder: (context) {
//                           return CustomBottomSheet();
//                         });
//                   },
//                 )
//               ],
//             )
//           ],
//         ));


