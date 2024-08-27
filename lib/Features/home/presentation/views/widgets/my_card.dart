import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import '../../../../../core/utlis/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: const EdgeInsetsDirectional.only(end: 4.0),
        padding: const EdgeInsetsDirectional.all(12.0),
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesMyCardBackground,
            ),
          ),
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular12.copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleRegular14.copyWith(
                  color: Colors.white,
                  fontFamily: 'SemiBold',
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold18.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '12/20 - 120',
                  style: AppStyles.styleRegular12.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
