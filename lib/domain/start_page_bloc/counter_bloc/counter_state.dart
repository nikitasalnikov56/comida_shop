part of 'counter_bloc.dart';

@immutable
sealed class CounterState extends Equatable {
  const CounterState();
  @override
  List<Object?> get props => [];
}

final class CounterInitial extends CounterState {}

class CounterChangeIndexState extends CounterState {
  final int index;

  const CounterChangeIndexState(this.index);
  @override
  List<Object?> get props => [index];
}


