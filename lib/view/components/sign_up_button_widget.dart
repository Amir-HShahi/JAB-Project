import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  final String buttonImagePath;
  final Function() pressButtonFunction;
  const SignUpButtonWidget(
      {super.key,
      required this.pressButtonFunction,
      required this.buttonImagePath});

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
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        padding: const EdgeInsets.all(15),
        child: Image(image: AssetImage(buttonImagePath)),
      ),
    );
  }
}
