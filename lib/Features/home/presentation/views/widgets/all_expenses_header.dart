import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_styles.dart';
import 'option_range.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(

          ),
        ),
        OptionRange(),
      ],
    );
  }
}
