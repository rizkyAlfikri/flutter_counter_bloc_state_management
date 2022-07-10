part of 'counter2_cubit.dart';

class Counter2State extends Equatable {
  int value = 0;
  Counter2State(this.value);

  @override
  List<Object> get props => [value];
}
