import 'package:e_commerce/featured/screens/home/home_screen.dart';
import 'package:e_commerce/featured/screens/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KhomeView = '/home_screen';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KhomeView,
        builder: (context, state) => const HomeScreen(),
      ),
      // GoRoute(
      //   path: khomeView,
      //   builder: (context, state) => const HomeView(),
      // ),
    ],
  );
}
