import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'smart_home_event.dart';
part 'smart_home_state.dart';

class SmartHomeBloc extends Bloc<SmartHomeEvent, SmartHomeState> {
  SmartHomeBloc() : super(SmartHomeInitial()) {
    on<SmartHomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
