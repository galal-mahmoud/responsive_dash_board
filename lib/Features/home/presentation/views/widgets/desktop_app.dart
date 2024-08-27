import 'package:flutter/material.dart';

import 'custom_all_expenses.dart';
import 'custom_drawer_widget.dart';
import 'my_card_transaction_Income.dart';

class DesktopApp extends StatelessWidget {
  const DesktopApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
            child: CustomDrawerWidget(),
        ),
        SizedBox(
          width: 32.0,
        ),
        Expanded(
          flex: 8,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CustomAllExpenses(),
                    ),
                    SizedBox(
                      width: 24.0,
                    ),
                    Expanded(
                        flex: 2,
                        child: MyCardTransactionIncome()
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}