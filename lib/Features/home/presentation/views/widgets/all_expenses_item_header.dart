import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.backgroundColor, this.imageColor, this.iconColor});
  final String image;
  final Color? backgroundColor, imageColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor ?? const Color(0xffFAFAFA),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Expanded(child: SizedBox(),),
        Transform.rotate(
          angle: 3.14,
            child: Icon(Icons.arrow_back_ios_rounded, color: iconColor ?? Color(0xff064060),)),
      ],
    );
  }
}
