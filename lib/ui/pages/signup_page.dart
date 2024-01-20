import 'package:auto_route/auto_route.dart';
import 'package:comida/ui/components/footer_widget.dart';
import 'package:comida/ui/components/header_widget.dart';
import 'package:comida/ui/resources/app_images.dart';
import 'package:comida/ui/style/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()    
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static bool signUpPage = true;
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
              AppImages.signUpBg,
            ),
          ),
        ),
        alignment: Alignment.topLeft,
        child: const SignUpWidgets(),
      ),
    );
  }
}

class SignUpWidgets extends StatelessWidget {
  const SignUpWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 27, top: 50),
          child: HeaderWidget(
            title: 'Sign Up',
            text: 'Please sign up to get started',
          ),
        ),
        SizedBox(height: 25),
        Expanded(
          child: FooterWidget(
            btnName: 'Sign Up',
            loginOrSignIn: 'Or Sign up with',
          ),
        ),
      ],
    );
  }
}
