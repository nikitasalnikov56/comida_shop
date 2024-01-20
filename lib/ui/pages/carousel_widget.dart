import 'package:auto_route/auto_route.dart';
import 'package:comida/domain/start_page_bloc/counter_bloc/counter_bloc.dart';
import 'package:comida/domain/start_page_bloc/loaded_items/loaded_items_bloc.dart';
import 'package:comida/ui/components/register_buttons.dart';
import 'package:comida/ui/router/router.dart';
import 'package:comida/ui/style/app_colors.dart';
import 'package:comida/ui/style/app_style.dart';
import 'package:comida/ui/style/btn_style.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemsBloc = LoadedItemsBloc()..add(LoadedItemsInitialEvent());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => itemsBloc,
        ),
      ],
      child: ScaffoldWidget(itemsBloc: itemsBloc),
    );
  }
}

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    super.key,
    required this.itemsBloc,
  });
  final LoadedItemsBloc itemsBloc;

  @override
  Widget build(BuildContext context) {
    final indexBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<CounterBloc, CounterChangeIndexState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.index == 0 ? Colors.red : Colors.green,
          body: Stack(
            children: [
              BlocBuilder<LoadedItemsBloc, LoadedItemsState>(
                bloc: itemsBloc,
                builder: (context, state) {
                  if (state is LoadedItemState) {
                    return CarouselSlider(
                      options: CarouselOptions(
                          height: MediaQuery.of(context).size.height,
                          viewportFraction: 1,
                          // autoPlay: true,
                          onPageChanged: (index, carouselPageChangedReason) {
                            indexBloc.add(
                              CounterChangeIndexEvent(index),
                            );
                          }),
                      items: state.images
                          .map((image) => Image.asset(
                                image,
                                fit: BoxFit.cover,
                              ))
                          .toList(),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              ScreenItems(
                indexState: state,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ScreenItems extends StatelessWidget {
  const ScreenItems({
    super.key,
    required this.indexState,
  });
  final CounterChangeIndexState indexState;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadedItemsBloc, LoadedItemsState>(
      builder: (context, state) {
        if (state is LoadedItemState) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 60, bottom: 20),
            child: Column(
              mainAxisAlignment: indexState.index == 1
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.end,
              children: [
                Text(
                  state.text[indexState.index],
                  style: AppStyle.fontStyle.copyWith(
                    color: indexState.index == 1
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                const SizedBox(height: 50),
                const LoginButtons(),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

class LoginButtons extends StatelessWidget {
  const LoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RegisterButtons(
          btnStyle: BtnStyle.btnStyle,
          textStyle: AppStyle.fontStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
          func: () {
            AutoRouter.of(context).push(const SignUpRoute());
          },
          btnName: 'Sign Up',
        ),
        RegisterButtons(
          btnStyle: BtnStyle.btnStyle.copyWith(
            side: const MaterialStatePropertyAll(BorderSide.none),
            backgroundColor: const MaterialStatePropertyAll(AppColors.black),
          ),
          textStyle: AppStyle.fontStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
          func: () {
            AutoRouter.of(context).push(const LoginRoute());
          },
          btnName: 'Log in',
        ),
      ],
    );
  }
}
