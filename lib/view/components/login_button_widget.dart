import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonWidget extends StatelessWidget {
  final String buttonImagePath;
  final String buttonText;
  final Function() buttonFunction;
  const LoginButtonWidget(
      {super.key,
      required this.buttonImagePath,
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
            SizedBox(
              height: 30,
              width: 30,
              child: Image(image: AssetImage(buttonImagePath)),
            ),
            const SizedBox(width: 15),
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
