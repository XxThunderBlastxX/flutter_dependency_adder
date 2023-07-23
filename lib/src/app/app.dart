import 'package:flutter/material.dart';

import 'router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: AppRouter().router.routerDelegate,
      routeInformationParser: AppRouter().router.routeInformationParser,
      routeInformationProvider: AppRouter().router.routeInformationProvider,
    );
  }
}
