import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/info_list_tile_model.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/info_list_tile.dart';

import '../../../../../generated/assets.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static List<InfoListTileModel> items = const [
    InfoListTileModel(title: 'Madrani Andi', image: Assets.imagesAvater1, subTitle: 'Madraniadi20@gmail'),
    InfoListTileModel(title: 'Josua Nunito', image: Assets.imagesAvater2, subTitle: 'Josh Nunito@gmail.com'),
    InfoListTileModel(title: 'Madrani Andi', image: Assets.imagesAvater1, subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: InfoListTile(infoListTileModel: e))).toList()
      ),
    );
  }
}
