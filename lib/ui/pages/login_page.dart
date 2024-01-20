import 'package:auto_route/auto_route.dart';
import 'package:comida/ui/components/footer_widget.dart';
import 'package:comida/ui/components/header_widget.dart';
import 'package:comida/ui/components/text_field_widget.dart';
import 'package:comida/ui/resources/app_images.dart';
import 'package:comida/ui/style/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()    
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static bool signUpPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: AppColors.darkBlack,
          image: DecorationImage(
            alignment: Alignment.topRight,
            fit: BoxFit.contain,
            image: AssetImage(
              AppImages.loginBg,
            ),
          ),
        ),
        alignment: Alignment.topLeft,
        child: const LoginWidgets(),
      ),
    );
  }
}

class LoginWidgets extends StatelessWidget {
  const LoginWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 27, top: 50),
          child: HeaderWidget(
            title: 'Login',
            text: 'Please sign in to your existing account',
          ),
        ),
        SizedBox(height: 25),
        Expanded(
          child: FooterWidget(
            labelText: 'Full name',
            widget: TextFieldWidget(
              hintText: 'Full Name',
            ),
            btnName: 'Login',
            loginOrSignIn: 'Or login with',
          ),
        ),
      ],
    );
  }
}
