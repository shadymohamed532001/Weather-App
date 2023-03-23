import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_th/Cubit/States.dart';
import 'package:weatherapp_th/modeals/Weather%20Moedeal.dart';
import 'package:weatherapp_th/weather%20servies/weather%20servies.dart';


class WeatherCubit extends Cubit<WeatherStates>
{
  WeatherCubit({required this.service}) : super (WeatherInitialState());
  static WeatherCubit get(context) => BlocProvider.of(context);
  WeatherService service ;
  WeatherModel? weatherModel ;
  String? cityName ;

  void GetWeather({ required String CityName})async
  {
    emit(WeatherLoadingState());
    try {
      weatherModel = await service.getWeather(cityName: CityName);
      emit(WeatherSucsessState());
    }on Exception catch(ex)
    {
      emit(WeatherFailureState());
    }

  }



  void onFinshed()
  {
    print('Animation complete');
    emit(AnimationFinsedState());
  }

}