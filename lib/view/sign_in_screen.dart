import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jab_project/view/components/login_button_widget.dart';
import 'package:jab_project/view/components/sign_styled_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  void loginWithGoogleHandler() {}

  void loginWithAppleHandler() {}

  void forgotPasswordHandler() {}

  void signInButtonHandler() {}

  @override
  Widget build(BuildContext context) {
    void pushToSignUpAccountHandler() {
      Navigator.pushNamed(context, "/SignUpScreen");
    }
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff2faff),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              Text("Welcome to JAB!",
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(height: 40),
              LoginButtonWidget(
                  buttonImagePath: "assets/images/google-logo.png",
                  buttonText: "Login with Google",
                  buttonFunction: loginWithGoogleHandler),
              const SizedBox(height: 10),
              LoginButtonWidget(
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
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: signInButtonHandler,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xff0098FF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign In",
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white)),
                      const SizedBox(width: 16),
                      const Icon(Icons.arrow_forward_rounded,
                          size: 20, color: Colors.white)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )),
                    GestureDetector(
                      onTap: pushToSignUpAccountHandler,
                      child: Text(" Create an account",
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: const Color(0xff0098FF),
                          )),
                    )
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
