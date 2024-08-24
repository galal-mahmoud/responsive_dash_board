import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/expenses_model.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/unNormal_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expensesModel, required this.isActive});
  final ExpensesModel expensesModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? ActiveAllExpensesItem(expensesModel: expensesModel)
        : NotActiveExpensesItem(expensesModel: expensesModel);
  }
}
