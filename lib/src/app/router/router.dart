import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../../feature/home/presentation/home_page.dart';
import '../../feature/search/presentation/search_page.dart';

class AppRouterPath {
  static const home = '/';
  static const search = '/search';
}

class AppRouter {
  static RouteMap router = RouteMap(
    routes: {
      AppRouterPath.home: (_) => const MaterialPage<void>(child: HomePage()),
      AppRouterPath.search: (routeData) {
        final query = routeData.queryParameters['q'];
        return MaterialPage<void>(
          child: SearchPage(
            query: query!,
          ),
        );
      },
    },
  );
}
