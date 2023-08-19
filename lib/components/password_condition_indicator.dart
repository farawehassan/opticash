import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';

class PasswordConditionIndicator extends StatelessWidget {
  const PasswordConditionIndicator({
    Key? key,
    required this.strength,
    required this.color,
    required this.text,
  }) : super(key: key);

  final int strength;

  final Color color;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 4,
          width: 84,
          child: ListView.separated(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 18,
                height: 4,
                decoration: BoxDecoration(
                  color: strength >= index ? color : AppColors.greyD9,
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 3),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 8,
            color: color,
          ),
        ),
      ],
    );
  }
}
