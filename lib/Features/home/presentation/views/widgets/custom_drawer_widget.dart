import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/dealing_model.dart';
import 'package:responsive_dash_board/Features/home/presentation/manager/info_list_tile_model.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/active_and_not_active_custom_dealing.dart';
import '../../../../../generated/assets.dart';
import 'custom_dealing_list_view.dart';
import 'info_list_tile.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: InfoListTile(
            infoListTileModel: InfoListTileModel(
                title: 'Lekan Okeowo',
                image: Assets.imagesFrame,
                subTitle: 'demo@gmail.com'),
          )),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20.0,
            ),
          ),
          const CustomDealingListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                NotActiveCustomDealing(
                  dealingModel: DealingModel(
                      image: Assets.imagesSetting2, text: 'Setting system'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: NotActiveCustomDealing(
                    dealingModel: DealingModel(
                        image: Assets.imagesLogout, text: 'Logout Account'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
