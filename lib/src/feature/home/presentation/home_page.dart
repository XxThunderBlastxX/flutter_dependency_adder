import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routemaster/routemaster.dart';

import '../../../app/common/widgets/search_bar.dart';
import '../../../app/router/router.dart';
import '../../../app/theme/theme.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 305.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 280.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppTheme.kRed,
                        AppTheme.kDarkRed,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Positioned(
                  top: 50.h,
                  child: Text(
                    'Flutter Dependency Adder',
                    style: AppTheme.theme.textTheme.labelLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 89.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Github',
                      style: AppTheme.theme.textTheme.labelSmall!.copyWith(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 15,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: StyledSearchBar(
                      onFieldSubmitted: (value) => Routemaster.of(context).push(
                          AppRouterPath.search,
                          queryParameters: {'q': value.trim()}),
                      width: 170.w,
                      height: 50.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            'Made with ❤️ by Koustav Mondal',
            style: AppTheme.theme.textTheme.labelSmall!
                .copyWith(color: Colors.black87),
          ),
          12.verticalSpace,
        ],
      ),
    );
  }
}
