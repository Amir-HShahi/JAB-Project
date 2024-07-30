import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends  StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
            ],
          ),
        ),
      ),
    ));
  }
}
