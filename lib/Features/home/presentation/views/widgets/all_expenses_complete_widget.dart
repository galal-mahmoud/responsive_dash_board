import 'package:flutter/material.dart';
import 'all_expenses_header.dart';
import 'all_expnsese_item_row.dart';

class AllExpensesCompleteWidget extends StatelessWidget {
  const AllExpensesCompleteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(16.0),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12.0)
      ),
      child:  const Column(
        children: [
          AllExpensesHeader(),
          AllExpnseseItemRow(),
        ],
      ),
    );
  }
}

