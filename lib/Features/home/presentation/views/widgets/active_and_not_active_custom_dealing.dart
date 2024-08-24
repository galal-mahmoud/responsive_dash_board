import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utlis/app_styles.dart';
import '../../manager/dealing_model.dart';

class NotActiveCustomDealing extends StatelessWidget {
  const NotActiveCustomDealing({
    super.key,
    required this.dealingModel,
  });

  final DealingModel dealingModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        height: 32.0,
        child: ListTile(
          title: Text(
            dealingModel.text,
            style: AppStyles.styleRegular14,
          ),
          leading: SvgPicture.asset(dealingModel.image),
        ),
      ),
    );
  }
}

class ActiveCustomDealing extends StatelessWidget {
  const ActiveCustomDealing({super.key, required this.dealingModel});
  final DealingModel dealingModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        height: 32,
        child: ListTile(
          title: FittedBox(
            alignment: Alignment.topLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              dealingModel.text,
              style: AppStyles.styleRegular14.copyWith(
                color: const Color(0xff4EB7F2),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: SvgPicture.asset(dealingModel.image),
          trailing: Container(
            width: 3.5,
            color: const Color(0xff4EB7F2),
          ),
        ),
      ),
    );
  }
}
