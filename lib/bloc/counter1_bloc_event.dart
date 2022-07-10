part of 'counter1_bloc_bloc.dart';

abstract class Counter1BlocEvent extends Equatable {
  const Counter1BlocEvent();

  @override
  List<Object> get props => [];
}

class Increment extends Counter1BlocEvent {}

class Decrement extends Counter1BlocEvent {}
