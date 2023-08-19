import 'package:flutter/cupertino.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/components/components.dart';
import 'package:opticash/gen/assets.gen.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 26, bottom: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        image: DecorationImage(
          image: AssetImage(
            AppAssets.images.balanceBg.path,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 31,
            padding: const EdgeInsets.only(left: 11, right: 7),
            decoration: const BoxDecoration(
              color: AppColors.green74,
              borderRadius: BorderRadius.all(Radius.circular(17)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppAssets.images.coin.image(
                  width: 24,
                  height: 21,
                ),
                const Text(
                  'Opticash Balance',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(width: 11),
                AppAssets.images.dropdown.image(
                  width: 18,
                  height: 18,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const FadeAnimation(
            delay: 1,
            child: Text(
              r'$243,998',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 3),
          const FadeAnimation(
            delay: 1.2,
            child: Text(
              '123848492920304.234 (OPCH)',
              style: TextStyle(
                color: AppColors.greenCD,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 10),
          AppAssets.images.eyeIcon.svg(),
        ],
      ),
    );
  }
}
