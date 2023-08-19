import 'package:flutter/material.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';
import 'package:opticash/ui/ui.dart';

class AccountSuccessModal extends StatelessWidget {
  const AccountSuccessModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 37, 16, 29),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppAssets.images.opticashIcon.image(
              width: 79,
              height: 93,
            ),
            const SizedBox(height: 13),
            const Text(
              'Account Created\nSuccessfully',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 21,
                color: AppColors.black100,
              ),
            ),
            const SizedBox(height: 19),
            Button(
              theme: const CustomButtonTheme.green(),
              text: 'SIGN IN',
              onTap: () => context.router.popAndPush(const SignInRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
