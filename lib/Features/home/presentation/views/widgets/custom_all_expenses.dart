import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/quick_invoice_complete_widget.dart';
import 'all_expenses_complete_widget.dart';

class CustomAllExpenses extends StatelessWidget {
  const CustomAllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpensesCompleteWidget(),
            QuickInvoiceCompleteWidget(),
          ],
        ),
      ),
    );
  }
}