import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_dash_board/Features/splash/presentation/views/widgets/sliding_animation_text.dart';
import 'package:responsive_dash_board/core/utlis/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    getAnimationController();
    getSlidingAnimation();
    delayedSlidingAnimation();
    super.initState();
  }




  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Dash Board'),
          const SizedBox(
            height: 4,
          ),
          SlidingAnimationText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }
  void getSlidingAnimation() {
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
  Future<Null> delayedSlidingAnimation() {
    return Future.delayed(const Duration(seconds: 2), () {
    GoRouter.of(context).push(AppRouter.kHomeView);
  });
  }
  void getAnimationController() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }
}
