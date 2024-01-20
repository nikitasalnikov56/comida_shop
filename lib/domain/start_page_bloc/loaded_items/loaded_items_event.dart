part of 'loaded_items_bloc.dart';

sealed class LoadedItemsEvent extends Equatable {
  const LoadedItemsEvent();

  @override
  List<Object> get props => [];
}

class LoadedItemsInitialEvent extends LoadedItemsEvent {}

