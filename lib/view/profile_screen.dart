import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jab_project/view/components/show_user_data_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "My name",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 55),
              const ShowUserDataWidget(
                  fieldTitle: "Email",
                  fieldIcon: Icons.email_outlined,
                  fieldData: "xxx@gmail.com"),
              const SizedBox(height: 20),
              const ShowUserDataWidget(
                  fieldTitle: "Phone Number",
                  fieldIcon: Icons.phone_outlined,
                  fieldData: "09172341234"),
            ],
          ),
        ),
      ),
    ));
  }
}
