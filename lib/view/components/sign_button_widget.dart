import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignButtonWidget extends StatelessWidget {
  final IconData buttonIcon;
  final String buttonText;
  final Function() buttonFunction;
  const SignButtonWidget(
      {super.key,
      required this.buttonIcon,
      required this.buttonText,
      required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(buttonIcon, size: 40, color: Colors.black),
            const SizedBox(width: 10),
            Text(
              buttonText,
              style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w600, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
