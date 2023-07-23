import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/home_page.dart';

class AppRouterPath {
  static const home = '/';
  static const search = '/search';
}

class AppRouterName {
  static const home = 'home';
  static const search = 'search';
}

class AppRouter {
  GoRouter get router => _router;

  final GoRouter _router = GoRouter(
    initialLocation: AppRouterPath.home,
    routes: [
      GoRoute(
        name: AppRouterName.home,
        path: AppRouterPath.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: AppRouterName.search,
        path: AppRouterPath.search,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
