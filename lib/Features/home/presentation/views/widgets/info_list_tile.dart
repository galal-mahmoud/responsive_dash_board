import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utlis/app_styles.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle,
  });

  final String title;
  final String image;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
            title,
          style: AppStyles.styleSemiBold16,
        ),
        leading: SvgPicture.asset(image),
        subtitle: Text(
            subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
