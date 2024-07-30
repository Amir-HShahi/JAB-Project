import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  final String buttonImagePath;
  final Function() pressButtonFunction;
  const SignUpButtonWidget({super.key, required this.pressButtonFunction, required this.buttonImagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressButtonFunction,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.black),
        ),
        padding: const EdgeInsets.all(15),
        child: Image(image: AssetImage(buttonImagePath)),
      ),
    );
  }
}
