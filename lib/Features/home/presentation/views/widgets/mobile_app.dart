import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/custom_all_expenses.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/my_card_transaction_Income.dart';

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAllExpenses(),
          MyCardTransactionIncome(),
        ],
      ),
    );
  }
}
