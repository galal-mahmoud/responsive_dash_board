import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/Income_section.dart';

import 'my_card_and_transaction_history.dart';

class MyCardTransactionIncome extends StatelessWidget {
  const MyCardTransactionIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: const Column(
              children: [
                MyCardAndTransactionHistory(),
                IncomeSection(),
        ],
      ),
    );
  }
}
