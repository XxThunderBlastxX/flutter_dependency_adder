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
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 0.45.sh,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 0.40.sh,
                  color: const Color(0xFFD90429),
                ),
                Container(
                  width: double.infinity,
                  height: 0.40.sh,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        const Color(0xFF000000).withOpacity(0.65),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Positioned(
                  top: 0.08.sh,
                  child: Text(
                    'Flutter Dependency Adder',
                    style: AppTheme.theme.textTheme.labelLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 0.15.sh,
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
                  top: 0.375.sh,
                  child: StyledSearchBar(
                    onFieldSubmitted: (value) => Routemaster.of(context).push(
                        AppRouterPath.search,
                        queryParameters: {'q': value.trim()}),
                    width: 0.55.sw,
                    height: 0.2.sh,
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
