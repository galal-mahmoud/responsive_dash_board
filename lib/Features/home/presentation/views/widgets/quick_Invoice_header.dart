import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            'Quick Invoice',
            style: AppStyles.styleSemiBold20
        ),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(Icons.add, color: Color(0xff4EB7F2),),
        ),
      ],
    );
  }
}
