import 'package:flutter/material.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';
import 'package:opticash/ui/ui.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 22),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 180),
                    child: ActionButtons(),
                  ),
                  BalanceCard(),
                ],
              ),
            ),
            const SizedBox(height: 14),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  ActionCard(
                    image: AppAssets.images.referFrame.image(),
                    text: r'Refer a friend and earn $3 per referral',
                    padding: const EdgeInsets.fromLTRB(17.23, 12.08, 12, 13.18),
                    color: AppColors.green13,
                  ),
                  const SizedBox(width: 10),
                  ActionCard(
                    image: AppAssets.images.pay.image(),
                    text: r'Refer a friend and earn $3 per referral',
                    padding: const EdgeInsets.fromLTRB(17.23, 12.08, 12, 13.18),
                    color: AppColors.brown,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 34),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Transactions(),
              ),
            ),
            const SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
