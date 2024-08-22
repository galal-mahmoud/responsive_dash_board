import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../manager/dealing_model.dart';
import 'active_and_not_active_custom_dealing.dart';

class CustomDealingWidget extends StatelessWidget {
  const CustomDealingWidget ({super.key, required this.dealingModel, required this.isActive});
  final bool isActive;
  final DealingModel dealingModel;
  @override
  Widget build(BuildContext context) {
    return isActive == true? ActiveCustomDealing(dealingModel: dealingModel) :
        NotActiveCustomDealing(dealingModel: dealingModel);
  }
}

