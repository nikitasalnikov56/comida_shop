import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterChangeIndexState> {
  CounterBloc() : super(const CounterChangeIndexState(0)) {
    on<CounterChangeIndexEvent>(_onChangeIndex);

  }
  _onChangeIndex(
      CounterChangeIndexEvent event, Emitter<CounterChangeIndexState> emit) {
    emit(
      CounterChangeIndexState(
        event.newIndex
      ),
    );
  }

 
}
