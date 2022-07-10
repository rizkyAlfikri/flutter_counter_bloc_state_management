part of 'counter1_bloc_bloc.dart';

class Counter1BlocState extends Equatable {
  int value = 0;

  Counter1BlocState(this.value);

  @override
  List<Object> get props => [value];
}
