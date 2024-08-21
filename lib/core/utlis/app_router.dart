import 'package:go_router/go_router.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/home_view.dart';
import 'package:responsive_dash_board/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kHomeView = '/HomeView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: ( context,state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: ( context,state) {
          return const HomeView();
        },
      ),
    ],
  );
}