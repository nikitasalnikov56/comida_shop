import 'package:comida/ui/components/facebook_or_google_widget.dart';
import 'package:comida/ui/components/signup_or_signin_widget.dart';
import 'package:comida/ui/components/text_field_widget.dart';
import 'package:comida/ui/style/app_colors.dart';
import 'package:comida/ui/style/app_style.dart';
import 'package:comida/ui/style/btn_style.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
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

  Widget? buildAddWidgets({String? labelWidget}) {
    if (widget != null) {
      return Text(
        '$labelWidget',
        style: AppStyle.fontStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      );
    } else {
      return null;
    }
  }

  Widget forgotButton() {
    if (widget != null) {
      return GestureDetector(
        onTap: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Forgot Password',
              style: AppStyle.fontStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.red,
              ),
            ),
          ),
        ),
      );
    } else {
      return const SizedBox(height: 20);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            // shrinkWrap: true,
            // physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            children: [
              buildAddWidgets(labelWidget: labelText) ?? const SizedBox(),
              Padding(
                padding: EdgeInsets.only(
                  top: widget != null ? 6 : 0,
                  bottom: widget != null ? 20 : 0,
                ),
                child: widget ?? const SizedBox.shrink(),
              ),
              Text(
                'Email',
                style: AppStyle.fontStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              const TextFieldWidget(hintText: 'example@gmail.com'),
              const SizedBox(height: 20),
              Text(
                'Password',
                style: AppStyle.fontStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              TextFieldWidget(
                hintText: '**********',
                suffixWidget: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: AppColors.hintColor,
                  ),
                ),
              ),
              forgotButton(),
              Center(
                child: ElevatedButton(
                  style: BtnStyle.btnStyle.copyWith(
                    backgroundColor:
                        const MaterialStatePropertyAll(AppColors.red),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 93, vertical: 18),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    btnName,
                    style: AppStyle.fontStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  loginOrSignIn,
                  style: AppStyle.fontStyle.copyWith(
                    color: AppColors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 21),
              const FacebookOrGoogleWidget(),
            ],
          ),
        ),
        SignUpOrSignInWidget(widget: widget),
      ],
    );
  }
}
