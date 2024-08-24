import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/custom_buttom.dart';

class QuickInvoiceButtoms extends StatelessWidget {
  const QuickInvoiceButtoms({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButtom(content: 'Add more details'),
        ),
        Expanded(
          child: CustomButtom(
            content: 'Send money',
            backgroundColor: Color(
              0xff4EB7F2,
            ),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
