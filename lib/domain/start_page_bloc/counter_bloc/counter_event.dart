part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object?> get props => [];
}

class CounterChangeIndexEvent extends CounterEvent {
  final int newIndex;

  const CounterChangeIndexEvent(
    this.newIndex,
  );
  @override
  List<Object?> get props => [newIndex];
}


