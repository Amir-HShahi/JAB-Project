import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 100),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Icon(Icons.lock, size: 70, color: Colors.black),
              const SizedBox(height: 50),
              Container(
                height: 48,
                width: 350,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                child: const Center(
                    child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
