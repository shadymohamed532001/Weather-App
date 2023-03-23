import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_th/Cubit/Cubit.dart';
import 'package:weatherapp_th/Cubit/States.dart';


import 'DataPageAppBar.dart';
import 'DataPageNavBar.dart';

class CustomDataPage extends StatelessWidget {
  const CustomDataPage({Key? key}) : super(key: key);
  static String id = 'DataPageTry';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/DataPhoto.jpg',
              ),
              fit: BoxFit.cover)),
      child:BlocBuilder<WeatherCubit,WeatherStates>(
        builder: (context,state)
        {
          WeatherCubit cubit =BlocProvider.of(context);
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: DataPageAppBar(),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        cubit.cityName!,
                        style: const TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 27,
                          fontFamily: 'Righteous',
                          color: Colors.white,

                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Icon(
                            Icons.light_mode_outlined,
                            color: Colors.white,
                            size: 60,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              cubit.weatherModel!.weatherStateName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'YesevaOne'))
                        ],
                      ),
                       Text(
                       '${cubit.weatherModel!.temp.toInt()}°',
                        style: const TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            bottomNavigationBar: const DataPageNavBar(),
          ) ;
        },
      )
    );
  }
}
