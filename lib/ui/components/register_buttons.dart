import 'package:flutter/material.dart';

class RegisterButtons extends StatelessWidget {
  const RegisterButtons({
    super.key,
    required this.btnStyle,
    required this.btnName,
    required this.textStyle,
    required this.func,
  });

  final ButtonStyle btnStyle;
  final TextStyle textStyle;
  final String btnName;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: btnStyle,
      onPressed: () {
        func();
      },
      child: Text(
        btnName,
        style: textStyle,
      ),
    );
  }
}
