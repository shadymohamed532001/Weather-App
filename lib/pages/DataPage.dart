import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_th/Cubit/Cubit.dart';
import 'package:weatherapp_th/Cubit/States.dart';
import 'package:weatherapp_th/Widget/CustomDataPage.dart';
import 'package:weatherapp_th/pages/serach%20page.dart';

import '../modeals/Weather Moedeal.dart';

// ignore: must_be_immutable
class DataPage extends StatelessWidget {
  DataPage({Key? key}) : super(key: key);
  static String id = 'DataPage';

  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherCubit,WeatherStates>(
        builder: (context, state) {
          WeatherCubit cubit = BlocProvider.of(context);
          if (state is WeatherLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          else if (state is WeatherSucsessState) {
            return CustomDataPage();

          }
          else if (state is WeatherFailureState) {
            return const Center(
              child: Text('Something Went wrong Please try again'),
            );
          }
          else
            {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'there is no weather 😔 start',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'searching now 🔍',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
              );
            }

        },
      ),
    );
  }
}