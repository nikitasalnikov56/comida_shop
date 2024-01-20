import 'package:comida/ui/style/app_colors.dart';
import 'package:comida/ui/style/app_style.dart';
import 'package:flutter/material.dart';

class SignUpOrSignInWidget extends StatelessWidget {
  const SignUpOrSignInWidget({super.key, required this.widget});
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    if (widget == null) {
      return GestureDetector(
        onTap: () {},
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Already have an account?',
              style: AppStyle.fontStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppColors.textSpan,
              ),
              children: [
                TextSpan(
                  text: '\tLogin',
                  style: AppStyle.fontStyle.copyWith(
                    fontSize: 13,
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {},
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Don’t have an account? ',
              style: AppStyle.fontStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppColors.textSpan,
              ),
              children: [
                TextSpan(
                  text: '\tSign Up',
                  style: AppStyle.fontStyle.copyWith(
                    fontSize: 13,
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
