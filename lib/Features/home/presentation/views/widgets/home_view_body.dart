import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/custom_drawer_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerWidget()),
      ],
    );
  }
}
