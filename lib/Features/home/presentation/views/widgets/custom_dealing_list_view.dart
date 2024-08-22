import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../manager/dealing_model.dart';
import 'custom_dealing_row.dart';

class CustomDealingListView extends StatefulWidget {
  const CustomDealingListView({
    super.key,
  });

  @override
  State<CustomDealingListView> createState() => _CustomDealingListViewState();
}

class _CustomDealingListViewState extends State<CustomDealingListView> {
  final List<DealingModel> dealingList = [
    DealingModel(text: 'Dashboard', image: Assets.imagesDashBoard,),
    DealingModel(text: 'My Transaction', image: Assets.imagesMyTransaction,),
    DealingModel(text: 'Statistics', image: Assets.imagesStatistics,),
    DealingModel(text: 'Wallet Account', image: Assets.imagesWalletAcount,),
    DealingModel(text: 'My Investments', image: Assets.imagesMtInvestments,),
  ];
    int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: dealingList.length,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap:(){
            if(activeIndex != index){
              activeIndex = index;
            setState(() {

            });
              print(activeIndex);
            }
          },
            child: CustomDealingWidget(
              isActive: activeIndex == index ? true : false,
              dealingModel: dealingList[index],
            ),);
      },);
  }
}
