import 'package:bloc/bloc.dart';
import 'package:comida/ui/resources/app_images.dart';
import 'package:equatable/equatable.dart';

part 'loaded_items_event.dart';
part 'loaded_items_state.dart';

class LoadedItemsBloc extends Bloc<LoadedItemsEvent, LoadedItemsState> {
  LoadedItemsBloc() : super(LoadedItemState()) {
    on<LoadedItemsInitialEvent>((event, emit) {
      emit(LoadedItemState());
    });

  }
}
