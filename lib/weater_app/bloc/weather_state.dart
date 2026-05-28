part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeaterSucsess extends WeatherState {}

final class WeaterFailur extends WeatherState {}

final class WeaterLoaded extends WeatherState {}
