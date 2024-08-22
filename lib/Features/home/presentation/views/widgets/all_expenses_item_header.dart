import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../generated/assets.dart';

class NormalAllExpensesItemHeader extends StatelessWidget {
  const NormalAllExpensesItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white.withOpacity(0.1),
          child: SvgPicture.asset(Assets.imagesIncome),
        ),
        Expanded(child: SizedBox(),),
        Transform.rotate(
          angle: 3.14,
            child: const Icon(Icons.arrow_back_ios_rounded, color: Color(0xff064060),)),
      ],
    );
  }
}
class UnNormalAllExpensesItemHeader extends StatelessWidget {
  const UnNormalAllExpensesItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white.withOpacity(0.1),
          child: SvgPicture.asset(Assets.imagesBalance),
        ),
        Expanded(child: SizedBox(),),
        Transform.rotate(
          angle: 3.14,
            child: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),),
      ],
    );
  }
}
