import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_th/Widget/CustomTextFormFiled.dart';

import '../Cubit/Cubit.dart';
import '../pages/DataPage.dart';

class CustomBottomSheet extends StatelessWidget {
  CustomBottomSheet({Key? key}) : super(key: key);
  String? cityName;
  TextEditingController controller =  TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Padding(
        padding:  EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(50)),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 30,
                  bottom: 20
                ),
                child: Column(
                  children: [
                     const Text(
                       'Weather App Search ',
                       style: TextStyle(
                         fontSize: 40,
                         fontFamily: 'Righteous',
                         color: Colors.black38
                       ),
                     ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: CustomTextFiled(
                        controller: controller,
                        style: const TextStyle(
                          color: Colors.white60
                        ),
                        hintText: 'Enter a city',
                        onChanged: (data) {
                          cityName = data;
                        },
                        hintStyle: const TextStyle(
                          color: Colors.black38
                        ),
                        onSubmitted: (data) async {
                          cityName = data;
                          BlocProvider.of<WeatherCubit>(context).GetWeather(CityName: cityName!);
                          BlocProvider.of<WeatherCubit>(context).cityName = cityName;
                          Navigator.pushNamed(context, DataPage.id);
                          controller.clear();
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
