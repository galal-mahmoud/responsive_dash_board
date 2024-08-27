import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/Income_model.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/Income_details_item.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  
  static final List<IncomeModel> items = [
    IncomeModel(text: 'Design service', percentage: '40%', color: const Color(0xff208CC8),),
    IncomeModel(text: 'Design product', percentage: '25%', color: const Color(0xff4EB7F2),),
    IncomeModel(text: 'Product royalti', percentage: '20%', color: const Color(0xff064061),),
    IncomeModel(text: 'Other', percentage: '22%', color: const Color(0xffE2DECD),),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: items.length,
        itemBuilder: (context, index)
        {
          return IncomeDetailsItem(incomeModel: items[index]);
        },
    );
  }
}
