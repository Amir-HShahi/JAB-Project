import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jab_project/view/components/sign_button_widget.dart';
import 'package:jab_project/view/components/sign_styled_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  void loginWithGoogleHandler() {}

  void loginWithAppleHandler() {}

  void forgotPasswordHandler() {}

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
              Text("Welcome to JAB!",
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(height: 40),
              SignButtonWidget(
                  buttonImagePath: "assets/images/google-logo.png",
                  buttonText: "Login with Google",
                  buttonFunction: loginWithGoogleHandler),
              const SizedBox(height: 10),
              SignButtonWidget(
                  buttonImagePath: "assets/images/apple-logo.png",
                  buttonText: "Login with Apple",
                  buttonFunction: loginWithAppleHandler),
              const SizedBox(height: 40),
              Text("or by email",
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.grey)),
              const SizedBox(height: 40),
              const SignStyledTextField(
                  hintText: " Email Address", isSuffixIconActive: false),
              const SizedBox(height: 20),
              const SignStyledTextField(
                  hintText: " Password", isSuffixIconActive: true),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                      onTap: forgotPasswordHandler,
                      child: Text("Forgot password?",
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.normal, fontSize: 16)))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
