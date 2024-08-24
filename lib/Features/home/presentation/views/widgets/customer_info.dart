import 'package:flutter/material.dart';
import '../../../../../core/utlis/app_styles.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Customer name',
          style: AppStyles.styleSemiBold16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
