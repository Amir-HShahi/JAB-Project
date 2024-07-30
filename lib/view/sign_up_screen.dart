import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jab_project/view/components/sign_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff2faff),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text("Welcome back!",
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(height: 40),
              SignButtonWidget(
                  buttonIcon: Icons.g_mobiledata_rounded,
                  buttonText: "Login with Google",
                  buttonFunction: () {}),
              const SizedBox(height: 10),
              SignButtonWidget(
                  buttonIcon: Icons.apple,
                  buttonText: "Login with Apple",
                  buttonFunction: () {}),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ));
  }
}
