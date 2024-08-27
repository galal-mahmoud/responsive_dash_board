import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/transaction_history_list_view.dart';
import '../../../../../core/utlis/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleRegular12.copyWith(
            color: Colors.grey,
          ),
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
