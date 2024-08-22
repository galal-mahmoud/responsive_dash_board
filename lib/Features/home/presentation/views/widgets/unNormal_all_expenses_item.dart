import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_styles.dart';
import 'all_expenses_item_header.dart';

class UnNormalAllExpensesItem extends StatelessWidget {
  const UnNormalAllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UnNormalAllExpensesItemHeader(),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 16, bottom: 8
            ),
            child: Text(
              textAlign: TextAlign.start,
              'Balance',
              style: AppStyles.styleBold16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 20,
            ),
            child: Text(
              'April, 20',
              style: AppStyles.styleBold16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Text(
            r'$20.00',
            style: AppStyles.styleSemiBold24.copyWith(
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
