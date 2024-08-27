import 'package:flutter/cupertino.dart';

import 'custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage, });

  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) =>   Padding(
        padding: const EdgeInsets.only(right: 8.0, top: 16),
        child: CustomDotIndicator(isActive: index == currentPage),
      ),),
    );
  }
}
