import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utlis/app_router.dart';

void main(){
  runApp(const ResponsiveDashBord());
}

class ResponsiveDashBord extends StatelessWidget {
  const ResponsiveDashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
