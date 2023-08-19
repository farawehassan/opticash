import 'package:flutter/material.dart';
import 'package:opticash/app/app_colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final Widget icon;

  final String title;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 33,
            height: 33,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.green74,
            ),
            child: Center(
              child: icon,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.green2C,
            ),
          ),
        ],
      ),
    );
  }
}
