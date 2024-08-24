import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/expenses_model.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/all_expenses_item.dart';
import '../../../../../generated/assets.dart';

class AllExpnseseItemRow extends StatefulWidget {
  const AllExpnseseItemRow({super.key});

  @override
  State<AllExpnseseItemRow> createState() => _AllExpnseseItemRowState();
}

class _AllExpnseseItemRowState extends State<AllExpnseseItemRow> {
  final List<ExpensesModel> expensesList = const [
    ExpensesModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 24',
        price: '20.99'),
    ExpensesModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 24',
        price: '20.99'),
    ExpensesModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 24',
        price: '20.99'),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: expensesList.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  if (activeIndex != index) {
                    activeIndex = index;
                    setState(() {});
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AllExpensesItem(
                    expensesModel: item,
                    isActive: activeIndex == index ? true : false,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  if (activeIndex != index) {
                    activeIndex = index;
                    setState(() {});
                  }
                },
                child: AllExpensesItem(
                  expensesModel: item,
                  isActive: activeIndex == index ? true : false,
                ),
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
