import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12.0)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 20,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
