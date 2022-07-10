import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter2_state.dart';

class Counter2Cubit extends Cubit<Counter2State> {
  Counter2Cubit() : super(Counter2State(0));

  void increment() {
    emit(Counter2State(state.value + 1));
  }

  void decrement() {
    emit(Counter2State(state.value - 1));
  }
}
