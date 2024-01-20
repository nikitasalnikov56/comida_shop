import 'package:comida/ui/style/app_colors.dart';
import 'package:flutter/material.dart';

class BtnStyle {
  static final btnStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(155, 55),
    backgroundColor: AppColors.btnBg,
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
      side: const BorderSide(
        color: AppColors.white,
        width: 1,
      ),
    ),
  );
}
