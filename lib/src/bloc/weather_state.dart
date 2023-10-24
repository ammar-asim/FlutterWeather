import 'package:equatable/equatable.dart';
import 'package:flutter_weather/src/model/weather.dart';
import 'package:meta/meta.dart';

class WeatherEmpty extends WeatherState {}

class WeatherError extends WeatherState {
  final int errorCode;

  WeatherError({@required this.errorCode})
      : assert(errorCode != null),
        super([errorCode]);
}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded({@required this.weather})
      : assert(weather != null),
        super([weather]);
}

class WeatherLoading extends WeatherState {}

abstract class WeatherState extends Equatable {
  WeatherState([List props = const []]) : super(props);
}
