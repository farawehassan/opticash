import 'package:flutter/material.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/components/components.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today, 26 june 2021',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.green27,
          ),
        ),
        SizedBox(height: 16),
        TransactionCard(),
      ],
    );
  }
}
