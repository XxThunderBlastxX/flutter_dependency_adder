import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:universal_html/html.dart' as html;

import '../../feature/home/presentation/home_page.dart';
import '../../feature/mobile_screen/presentation/mobile_screen_page.dart';
import '../../feature/search/presentation/search_page.dart';

class AppRouterPath {
  static const home = '/';
  static const search = '/search';
}

class AppRouter {
  static RouteMap router = RouteMap(
    routes: {
      AppRouterPath.home: (_) => isMobileBrowser()
          ? const MaterialPage<void>(child: MobileScreenPage())
          : const MaterialPage<void>(child: HomePage()),
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

bool isMobileBrowser() {
  final userAgent = html.window.navigator.userAgent;
  return userAgent.contains('Android') || userAgent.contains('iPhone');
}
