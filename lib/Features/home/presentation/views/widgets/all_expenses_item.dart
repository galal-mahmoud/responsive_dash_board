import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/all_expenses_item_header.dart';

import '../../../../../core/utlis/app_styles.dart';

class NormalAllExpensesItem extends StatelessWidget {
  const NormalAllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 12.0),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: const Color(0xffF1F1F1),),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NormalAllExpensesItemHeader(),
          Padding(
              padding: EdgeInsetsDirectional.only(
                top: 16, bottom: 8
              ),
            child: Text(
              textAlign: TextAlign.start,
              'Income',
              style: AppStyles.styleBold16
              ),
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: 20,
              ),
            child: Text(
              'April, 20',
              style: AppStyles.styleBold16
            ),
          ),
          Text(
            r'$20.00',
            style: AppStyles.styleSemiBold24
          ),
        ],
      ),
    );
  }
}
