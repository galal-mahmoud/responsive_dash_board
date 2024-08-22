import 'package:flutter/material.dart';
import '../../../../../core/utlis/app_styles.dart';
import 'all_expnsese_item_row.dart';
import 'option_range.dart';

class AllExpensesCompleteWidget extends StatelessWidget {
  const AllExpensesCompleteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(20.0),
      decoration: buildBoxDecoration(),
      child:  const Column(
        children: [
          Row(
            children: [
              Text(
                'All Expenses',
                style: AppStyles.styleSemiBold20,
              ),
              Expanded(
                child: SizedBox(

                ),
              ),
              OptionRange(),
            ],
          ),
          AllExpnseseItemRow(),
        ],
      ),
    );
  }
  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12.0)
    );
  }
}
