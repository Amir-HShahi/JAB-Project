import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignStyledTextField extends StatefulWidget {
  final String hintText;
  const SignStyledTextField({super.key, required this.hintText});

  @override
  State<SignStyledTextField> createState() => _SignStyledTextFieldState();
}

class _SignStyledTextFieldState extends State<SignStyledTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.yellow)),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.workSans(
                  color: Colors.black, fontSize: 20),
              fillColor: Colors.white,
              filled: true),
        ),
      ),
    );
  }
}
