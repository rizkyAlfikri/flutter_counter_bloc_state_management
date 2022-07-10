import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter1_bloc_event.dart';
part 'counter1_bloc_state.dart';

class Counter1BlocBloc extends Bloc<Counter1BlocEvent, Counter1BlocState> {
  Counter1BlocBloc() : super(Counter1BlocState(0)) {
    on<Increment>((event, emit) {
      return emit(Counter1BlocState(state.value + 1));
    });

    on<Decrement>(((event, emit) => emit(Counter1BlocState(state.value - 1))));
  }
}
