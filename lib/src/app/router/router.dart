import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/home_page.dart';

class AppRouterName {
  static const home = '/';
}

class AppRouter {
  GoRouter get router => _router;

  final GoRouter _router = GoRouter(
    initialLocation: AppRouterName.home,
    routes: [
      GoRoute(
        path: AppRouterName.home,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
