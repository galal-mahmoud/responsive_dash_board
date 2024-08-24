import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/info_list_tile_model.dart';
import 'package:responsive_dash_board/core/utlis/app_styles.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    super.key,
    required this.infoListTileModel,
  });
  final InfoListTileModel infoListTileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: FittedBox(
          child: Text(
              infoListTileModel.title,
            style: AppStyles.styleSemiBold16,
          ),
        ),
        leading: SvgPicture.asset(infoListTileModel.image),
        subtitle: FittedBox(
          child: Text(
              infoListTileModel.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
