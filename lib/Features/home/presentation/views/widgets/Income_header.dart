import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/option_range.dart';
import '../../../../../core/utlis/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold18.copyWith(
            color: const Color(0xff064060)
          ),
        ),
        const OptionRange(),
      ],
    );
  }
}
