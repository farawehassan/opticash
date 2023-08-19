import 'package:flutter/material.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';
import 'package:opticash/ui/ui.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 10),
      decoration: const BoxDecoration(
        color: AppColors.greyF4,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActionButton(
            icon: AppAssets.images.sendMoney.svg(),
            title: 'Send Money',
            onTap: () {},
          ),
          const SizedBox(width: 11),
          Container(
            width: 1,
            height: 35,
            color: AppColors.greyEA,
          ),
          const SizedBox(width: 28),
          ActionButton(
            icon: AppAssets.images.topUp.svg(),
            title: 'Top-Up',
            onTap: () {},
          ),
          const SizedBox(width: 22),
          Container(
            width: 1,
            height: 35,
            color: AppColors.greyEA,
          ),
          const SizedBox(width: 13),
          ActionButton(
            icon: AppAssets.images.account.svg(),
            title: 'Account Details',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
