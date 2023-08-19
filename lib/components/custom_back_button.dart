import 'package:flutter/material.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        width: 30.536,
        height: 34.762,
        decoration: BoxDecoration(
          border:
              Border.all(color: AppColors.black10.withOpacity(0.6), width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        child: Center(
          child: AppAssets.images.backIcon.svg(),
        ),
      ),
    );
  }
}
