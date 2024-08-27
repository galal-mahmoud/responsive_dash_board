import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/Income_chart.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/Income_details_list_view.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/Income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, ),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12.0)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IncomeHeader(),
          SizedBox(height: 16.0,),
          Row(
            children: [
              Expanded(
                flex: 2,
                  child: IncomeChart()),
              SizedBox(width: 24.0,),
              Expanded(
                flex: 5,
                child: IncomeDetailsListView(),
              ),
            ],
          ),
              ],
      ),
    );
  }
}
