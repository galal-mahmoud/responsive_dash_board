import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/expenses_model.dart';

import '../../../../../core/utlis/app_styles.dart';
import 'all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.expensesModel});
  final ExpensesModel expensesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           AllExpensesItemHeader(
             imageColor: const Color(0xffFFFFFF),
             image: expensesModel.image,
             backgroundColor: Colors.white.withOpacity(0.1),
             iconColor: Colors.white,
           ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 16, bottom: 4,
            ),
            child: Text(
              textAlign: TextAlign.start,
              expensesModel.title,
              style: AppStyles.styleBold16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Text(
            expensesModel.date,
            style: AppStyles.styleRegular12.copyWith(
              color: const Color(0xffFAFAFA),
            )
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '\$${expensesModel.price}',
            style: AppStyles.styleSemiBold20.copyWith(
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}

class NotActiveExpensesItem extends StatelessWidget {
  const NotActiveExpensesItem({super.key, required this.expensesModel});
  final ExpensesModel expensesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: const Color(0xffF1F1F1),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           AllExpensesItemHeader(image: expensesModel.image),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 16, bottom: 4
            ),
            child: Text(
                expensesModel.title,
                style: AppStyles.styleBold16
            ),
          ),
           Text(
               expensesModel.date,
               style: AppStyles.styleRegular12
           ),
           const SizedBox(
             height: 16,
           ),
           Text(
              '\$${expensesModel.price}',
              style: AppStyles.styleSemiBold20
          ),
        ],
      ),
    );
  }
}
