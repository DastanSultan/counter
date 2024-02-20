import 'package:counter/bloc/counter_bloc_event.dart';
import 'package:counter/bloc/counter_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(InitalState()) {
    on<CounterInc>((event, emit) {
      counter++;
      emit(UpdateState(counter));
    });
  }
}
