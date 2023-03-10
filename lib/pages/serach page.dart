
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modeals/Weather Moedeal.dart';
import '../providers/weather provider.dart';
import '../weather servies/weather servies.dart';

class SearchScrean extends StatelessWidget {
   SearchScrean({Key? key}) : super(key: key);
  String? CityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Search Screan'
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onFieldSubmitted: (data)async
                {
                  WeatherServies Servies =WeatherServies();
                  CityName =data ;
                 WeatherModeal? weather = await Servies.WeatherGetData(CityName: CityName!);
                 Provider.of<Weatherprovider>(context,listen: false).WeatherData = weather;
                 Navigator.pop(context);
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 35
                  ),
                  hintText: 'Enter a City',
                  labelText: 'Searching',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
