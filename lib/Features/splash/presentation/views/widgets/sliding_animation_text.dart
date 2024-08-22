import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/core/utlis/app_styles.dart';

class SlidingAnimationText extends StatelessWidget {
  const SlidingAnimationText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
              'Welcome to Dash Board app', style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffFFFFFF),
          )
          ),
        );
      },
    );
  }
}
