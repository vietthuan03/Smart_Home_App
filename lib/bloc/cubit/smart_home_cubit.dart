import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'smart_home_state.dart';

class SmartHomeCubit extends Cubit<SmartHomeState> {
  SmartHomeCubit() : super(SmartHomeInitial());
}
