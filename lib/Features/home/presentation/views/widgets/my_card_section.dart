import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/my_card_page_view.dart';
import '../../../../../core/utlis/app_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  
 late PageController pageController;
 int currentPage = 0;
 @override
  void initState() {
    pageController = PageController();
    pageController.addListener((){
      currentPage = pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12.0)
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(height: 12.0,),
          MyCardPageView(pageController: pageController,),
          DotsIndicator(currentPage: currentPage,),
        ],
      ),
    );
  }
}
