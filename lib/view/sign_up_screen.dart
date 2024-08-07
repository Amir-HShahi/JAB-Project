import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jab_project/view/components/sign_styled_text_field.dart';
import 'package:jab_project/view/components/sign_up_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void signUpWithGoogleHandler() {}

  void signUpWithAppleHandler() {}

  @override
  Widget build(BuildContext context) {
    void pushToSignInScreenHandler() {
      Navigator.pushNamed(context, "/SignInScreen");
    }

    void signUpButtonHandler() {
      Navigator.pushNamed(context, '/ProfileScreen');
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
              Text("Sign up to JAB!",
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(height: 40),
              const SignStyledTextField(
                  hintText: " Email Address", isSuffixIconActive: false),
              const SizedBox(height: 20),
              const SignStyledTextField(
                  hintText: " Username", isSuffixIconActive: false),
              const SizedBox(height: 20),
              const SignStyledTextField(
                  hintText: " Phone", isSuffixIconActive: false),
              const SizedBox(height: 20),
              const SignStyledTextField(
                  hintText: " Password", isSuffixIconActive: true),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text("or",
                      style: GoogleFonts.workSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.grey)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: signUpButtonHandler,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xff0098FF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign Up",
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
                    Text("Already have an account?",
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )),
                    GestureDetector(
                      onTap: pushToSignInScreenHandler,
                      child: Text(" Login to account",
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
