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
    return ListTile(
      title: Text(
        dealingModel.text,
        style: AppStyles.styleRegular16,
      ),
      leading: SvgPicture.asset(dealingModel.image),
    );
  }
}

class ActiveCustomDealing extends StatelessWidget {
  const ActiveCustomDealing({super.key, required this.dealingModel});
  final DealingModel dealingModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        dealingModel.text,
        style: AppStyles.styleSemiBold18,
      ),
      leading: SvgPicture.asset(dealingModel.image),
      trailing: Container(
        width: 3.5,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
