import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileApp, required this.desktopApp, required this.tabletApp});

  final WidgetBuilder mobileApp, desktopApp, tabletApp;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth > 600){
            return mobileApp(context);
          }else if(constraints.maxWidth > 900){
            return tabletApp(context);
          }else{
            return desktopApp(context);
          }
        }
    );
  }
}
