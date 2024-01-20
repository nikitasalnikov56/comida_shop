part of 'loaded_items_bloc.dart';

sealed class LoadedItemsState extends Equatable {
  const LoadedItemsState();

  @override
  List<Object> get props => [];
}

final class LoadedItemsInitial extends LoadedItemsState {}

final class LoadedItemState extends LoadedItemsState {
  final List<String> images = [
    AppImages.pizza,
    AppImages.donut,
    AppImages.burger,
  ];
  
  final List<String> text = [
    "I don't feel like cooking. Let's order food delivery.",
    "Donut worry, be happy and eat more donuts!",
    "Good music and good food makes me happy.",
  ];
}

