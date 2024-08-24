import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/latest_transaction_list_view.dart';

import '../../../../../core/utlis/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleSemiBold16,
        ),
        SizedBox(
          height: 12.0,
        ),
        LatestTransactionListView(),
      ],
    );
  }
}
