import 'package:flutter/material.dart';
import 'all_expenses_complete_widget.dart';

class CustomAllExpenses extends StatelessWidget {
  const CustomAllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          AllExpensesCompleteWidget(),
        ],
      ),
    );
  }


}


