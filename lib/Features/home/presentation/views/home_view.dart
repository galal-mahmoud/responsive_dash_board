import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/custom_drawer_widget.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 600 ? AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.white,),
        ),
      ) : null,
      drawer:
          MediaQuery.sizeOf(context).width < 600 ? SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
              child: CustomDrawerWidget(),
          ) : null,
      backgroundColor: Color(0xffF7F9FA),
      body: HomeViewBody(),
    );
  }
}
