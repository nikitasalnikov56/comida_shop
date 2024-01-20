import 'package:auto_route/auto_route.dart';
import 'package:comida/ui/style/app_colors.dart';
import 'package:comida/ui/style/app_style.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.title,
    required this.text,
  });
  final String title, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 38,
          height: 38,
          child: FloatingActionButton.extended(
            backgroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPressed: () {
              context.back();
            },
            label: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.black,
              size: 20,
            ),
          ),
        ),
        const SizedBox(height: 23),
        Text(
          title,
          style: AppStyle.fontStyle.copyWith(
            fontSize: 30,
            color: AppColors.white,
          ),
        ),
        const SizedBox(height: 5),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 197),
          child: Text(
            text,
            style: AppStyle.fontStyle.copyWith(
              fontSize: 14,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
