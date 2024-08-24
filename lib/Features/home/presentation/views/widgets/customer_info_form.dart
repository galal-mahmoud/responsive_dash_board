import 'package:flutter/material.dart';

import 'customer_info.dart';

class CustomerInfoForm extends StatelessWidget {
  const CustomerInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomerInfo(title: 'Customer name', hint: 'Type customer name',),),
            SizedBox(width: 16.0,),
            Expanded(child: CustomerInfo(title: 'Customer Email', hint: 'Type customer email',)),
          ],
        ),
        SizedBox(height: 24.0,),
        Row(
          children: [
            Expanded(child: CustomerInfo(title: 'Item name', hint: 'Type customer name',),),
            SizedBox(width: 16.0),
            Expanded(child: CustomerInfo(title: 'Item mount', hint: 'USD',),),
          ],
        ),
      ],
    );
  }
}
