import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowUserDataWidget extends StatelessWidget {
  final String fieldTitle;
  final IconData fieldIcon;
  final String fieldData;
  const ShowUserDataWidget(
      {super.key,
      required this.fieldTitle,
      required this.fieldIcon,
      required this.fieldData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 12),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border:
                  Border.all(color: const Color(0xffABABAB).withOpacity(0.8)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ]),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(fieldIcon, size: 24, color: const Color(0xffABABAB)),
              const SizedBox(width: 12),
              Text(
                fieldData,
                style: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffABABAB)),
              )
            ],
          ),
        )
      ],
    );
  }
}
