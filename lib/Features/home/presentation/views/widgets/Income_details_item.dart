import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/Income_model.dart';

import '../../../../../core/utlis/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeModel});
  final IncomeModel incomeModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: incomeModel.color,
            radius: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              incomeModel.text,
              style: AppStyles.styleRegular14,
            ),
          ),
          const Expanded(child: SizedBox()),
          Text(
            incomeModel.percentage,
            style: AppStyles.styleSemiBold14.copyWith(
              color: const Color(0xff208CC8),
            ),
          ),
          const SizedBox(width: 2.0,),
        ],
      ),
    );
  }
}
