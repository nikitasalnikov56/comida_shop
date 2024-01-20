import 'package:comida/ui/style/app_colors.dart';
import 'package:comida/ui/style/app_style.dart';
import 'package:flutter/material.dart';

class FacebookOrGoogleWidget extends StatelessWidget {
  const FacebookOrGoogleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonWidget(
          image: 'assets/images/facebook.png',
          name: 'FACEBOOK',
        ),
        ButtonWidget(
          image: 'assets/images/google.png',
          name: 'GOOGLE',
        ),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.image,
    required this.name,
  });
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.white,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(211, 209, 216, 0.20),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(3, 3)),
          ],
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 150, height: 60),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 11,
              left: 15,
              bottom: 10,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image),
                const SizedBox(width: 10),
                Text(
                  name,
                  style: AppStyle.fontStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    letterSpacing: 0.5,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
