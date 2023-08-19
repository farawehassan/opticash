import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';

class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: AppColors.lightGreen,
          ),
        ),
        Text(
          description,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColors.grey9E,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
