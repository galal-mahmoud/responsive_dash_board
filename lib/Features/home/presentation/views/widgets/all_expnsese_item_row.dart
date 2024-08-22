import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/unNormal_all_expenses_item.dart';

class AllExpnseseItemRow extends StatelessWidget {
  const AllExpnseseItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Expanded(child: UnNormalAllExpensesItem()),
          Expanded(child: NormalAllExpensesItem()),
          Expanded(child: NormalAllExpensesItem()),
        ],
      ),
    );
  }
}
