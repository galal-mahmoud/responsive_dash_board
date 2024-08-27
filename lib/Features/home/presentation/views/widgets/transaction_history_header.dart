import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold16,
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium12.copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
