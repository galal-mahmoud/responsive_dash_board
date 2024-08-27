import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/custom_all_expenses.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/custom_drawer_widget.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/my_card_transaction_Income.dart';

class TabletApp extends StatelessWidget {
  const TabletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          
          child: Row(
            children: [
              Expanded(child: CustomDrawerWidget()),
              SizedBox(
                width: 24.0,
              ),
              Expanded(
                flex: 3,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomAllExpenses(),
                        MyCardTransactionIncome(),
                      ],
                    ),
                  ),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
