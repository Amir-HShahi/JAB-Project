import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignStyledTextField extends StatefulWidget {
  final String hintText;
  final bool isSuffixIconActive;
  const SignStyledTextField(
      {super.key, required this.hintText, required this.isSuffixIconActive});

  @override
  State<SignStyledTextField> createState() => _SignStyledTextFieldState();
}

class _SignStyledTextFieldState extends State<SignStyledTextField> {
  bool _isInputTextObscure = false;
  void toggleObscureTextIcon() {
    setState(() {
      _isInputTextObscure = !_isInputTextObscure;
    });
  }

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
          offset: const Offset(0, 3),
        ),
      ]),
      child: Center(
        child: TextField(
          obscureText: _isInputTextObscure,
          decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.yellow)),
              hintText: widget.hintText,
              hintStyle:
                  GoogleFonts.workSans(color: Colors.black, fontSize: 20),
              suffixIcon: widget.isSuffixIconActive
                  ? IconButton(
                      onPressed: toggleObscureTextIcon,
                      icon: Icon(_isInputTextObscure
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded))
                  : null,
              fillColor: Colors.white,
              filled: true),
        ),
      ),
    );
  }
}
