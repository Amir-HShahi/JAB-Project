import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jab_project/view/components/sign_up_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void signUpWithGoogleHandler() {}

  void signUpWithAppleHandler() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff2faff),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              Text("Sign up to JAB!",
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(height: 40),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignUpButtonWidget(
                        pressButtonFunction: signUpWithGoogleHandler,
                        buttonImagePath: "assets/images/google-logo.png"),
                    const SizedBox(width: 25),
                    SignUpButtonWidget(
                        pressButtonFunction: signUpWithAppleHandler,
                        buttonImagePath: "assets/images/apple-logo.png")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
