import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/transaction_model.dart';

import '../../../../../core/utlis/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key, required this.transactionModel,
  });

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
      title: Text(
        transactionModel.title,
        style: AppStyles.styleSemiBold14,
      ),
      subtitle: Text(
        transactionModel.date,
        style: AppStyles.styleRegular12.copyWith(
            color: Colors.grey
        ),
      ),
      trailing: Text(
        transactionModel.price,
        style: AppStyles.styleBold16.copyWith(
          color: transactionModel.isActive == true ? const Color(0xff7DD97B) : const Color(0xffF3735E),
        ),
      ),
    );
  }
}
