

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp_th/pages/serach%20page.dart';

import '../modeals/Weather Moedeal.dart';
import '../providers/weather provider.dart';

class HomeScrean extends StatelessWidget {
  HomeScrean({Key? key}) : super(key: key);


  WeatherModeal? WeatherData;
  @override
  Widget build(BuildContext context) {
    var Data = Provider.of<Weatherprovider>(context).WeatherData;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Weather App'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScrean();
                  }));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: Provider.of<Weatherprovider>(context).WeatherData == null
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'There is no weather her 🌡️',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 27),
                    ),
                    Text(
                      'Start Searching Now 🔍',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ],
                ),
              )
            : Container(
          decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: [
                Data!.GetColor(),
                Data!.GetColor()[400]!,
                Data!.GetColor()[200]!,
                Data!.GetColor()[100]!,


              ],
              begin:Alignment.topCenter ,
              end:Alignment.bottomCenter ,
            )
          ),
                child: Column(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '${Data!.CityName}',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Updated at :${Data.date.hour}:${Data.date.minute}',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(Data.GetIcon()),
                        Text(
                          '${Data.temp.toInt()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        Column(
                          children: [
                            Text('max : ${Data.MaxTemp.toInt()}'),
                            Text('min : ${Data.MinTemp.toInt()}'),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      '${Data.weatherstate}',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 5,
                    )
                  ],
                ),
              ));
  }
}
