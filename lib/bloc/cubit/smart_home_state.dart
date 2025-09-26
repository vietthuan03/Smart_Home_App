part of 'smart_home_cubit.dart';

sealed class SmartHomeState extends Equatable {
  const SmartHomeState();

  @override
  List<Object> get props => [];
}

final class SmartHomeInitial extends SmartHomeState {}
