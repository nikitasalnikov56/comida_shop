import 'package:comida/ui/components/form_widget.dart';
import 'package:comida/ui/style/app_colors.dart';

import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
    this.widget,
    this.labelText,
    required this.btnName,
    required this.loginOrSignIn,
  });
  final Widget? widget;
  final String? labelText;
  final String btnName;
  final String loginOrSignIn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: FormWidget(
        widget: widget,
        labelText: labelText,
        btnName: btnName,
        loginOrSignIn: loginOrSignIn,
      ),
    );
  }
}
