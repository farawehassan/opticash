import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    super.key,
    required this.image,
    required this.padding,
    required this.color,
    required this.text,
  });

  final Widget image;

  final EdgeInsets padding;

  final Color color;

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 261,
        height: 112,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          image: DecorationImage(
            image: AssetImage(
              AppAssets.images.referBackground.path,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            image,
            const SizedBox(width: 15.5),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
