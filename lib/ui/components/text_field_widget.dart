import 'package:comida/ui/style/app_colors.dart';
import 'package:comida/ui/style/app_style.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.suffixWidget,
  });
  final String hintText;
  final Widget? suffixWidget;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: AppColors.lightGrey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 19, vertical: 20),
        hintText: hintText,
        hintStyle: AppStyle.fontStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.hintColor,
        ),
        suffixIcon: suffixWidget,
      ),
    );
  }
}