import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, _) => MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        routerDelegate: AppRouter().router.routerDelegate,
        routeInformationParser: AppRouter().router.routeInformationParser,
        routeInformationProvider: AppRouter().router.routeInformationProvider,
      ),
    );
  }
}
