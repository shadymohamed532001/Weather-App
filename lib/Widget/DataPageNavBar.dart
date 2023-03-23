import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_th/Cubit/Cubit.dart';
import 'package:weatherapp_th/Cubit/States.dart';
class DataPageNavBar extends StatelessWidget {
   const DataPageNavBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit,WeatherStates>(
      builder: (context,state)
      {
        WeatherCubit cubit =BlocProvider.of(context);
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius. circular(40),
              )
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 16,
                    bottom: 12
                ),
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              const Text(
                'Weather Today',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontFamily: 'YesevaOne'
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:  const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset('assets/images/sunny_.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            '${cubit.weatherModel!.date.hour}:${cubit.weatherModel!.date.minute}',
                            style:const TextStyle(
                              letterSpacing: 1.1,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                           Text(
                            '${cubit.weatherModel!.maxTemp.toInt()}°',
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        children: [
                          Image.asset('assets/images/cloudy_.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            '${cubit.weatherModel!.date.hour}:${cubit.weatherModel!.date.minute}',
                            style: const TextStyle(
                              letterSpacing: 1.1,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                           Text(
                            '${cubit.weatherModel!.cloud}°',
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset('assets/images/fine_.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            '${cubit.weatherModel!.date.hour}:${cubit.weatherModel!.date.minute}',
                            style: const TextStyle(
                              letterSpacing: 1.1,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                           Text(
                            '${cubit.weatherModel!.temp.toInt()}°',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset('assets/images/raine_.png',
                            width: 60,
                            height: 55,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            '${cubit.weatherModel!.date.hour}:${cubit.weatherModel!.date.minute}',
                            style: const TextStyle(
                              letterSpacing: 1.1,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                           Text(
                            '${cubit.weatherModel!.minTemp.toInt()}°',
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),

        );
      },
    );
  }
}
