import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/Income_section.dart';

import 'my_card_and_transaction_history.dart';

class MyCardTransactionIncome extends StatelessWidget {
  const MyCardTransactionIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              MyCardAndTransactionHistory(),
              IncomeSection(),
            ],
          ),
        )
      ],
    );
  }
}
