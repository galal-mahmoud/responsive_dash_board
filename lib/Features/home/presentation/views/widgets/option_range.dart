import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_styles.dart';

class OptionRange extends StatelessWidget {
  const OptionRange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(6.0),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: const Color(0xffF1F1F1),),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleSemiBold14,
          ),
          const SizedBox(
            width: 18.0,
          ),
          Transform.rotate(
            angle: -1.571,
            child: const Icon(Icons.arrow_back_ios_outlined),
          ),
        ],
      ),
    );
  }
}
