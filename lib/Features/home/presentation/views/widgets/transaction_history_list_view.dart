import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/transaction_model.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  
  static final List<TransactionModel> items = [
    TransactionModel(title: 'Cash Withdrawal', date: '13 Apr, 2022', price: '20,129', isActive: false),
    TransactionModel(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', price: '2,000', isActive: true),
    TransactionModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 at 3:30 PM', price: '20,129', isActive: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionHistoryItem(transactionModel: e)).toList(),
    );
  }
}
