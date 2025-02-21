part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();
  
  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlocLoading extends WeatherBlocState {}
final class WeatherBlocFailure extends WeatherBlocState {}
class WeatherBlocLoaded extends WeatherBlocState {
  final Weather weather;

  WeatherBlocLoaded(this.weather);

  @override
  List<Object> get props => [weather];
}

class WeatherBlocError extends WeatherBlocState {
  final String message;

  WeatherBlocError(this.message);

  @override
  List<Object> get props => [message];
}
