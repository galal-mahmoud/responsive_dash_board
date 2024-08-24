import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/custom_drawer_widget.dart';

import 'custom_all_expenses.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerWidget()),
        SizedBox(
          width: 32.0,
        ),
        Expanded(
          flex: 3,
          child: CustomAllExpenses(),
        ),
        Expanded(
          flex: 2,
          child: Column(),),
      ],
    );
  }
}

