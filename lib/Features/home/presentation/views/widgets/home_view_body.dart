import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/mobile_app.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/tablet_app.dart';
import 'desktop_app.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileApp: (context) => const MobileApp(),
      desktopApp: (context) => const DesktopApp(),
      tabletApp: (context) => const TabletApp(),
    );
  }
}
