import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routemaster/routemaster.dart';

import '../../../app/common/widgets/search_bar.dart';
import '../../../app/router/router.dart';
import '../../../app/theme/theme.dart';
import '../../../app/utils/assets.dart';
import '../../../app/utils/launch_url.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                )
                    .animate()
                    .fadeIn(duration: const Duration(milliseconds: 200))
                    .blurY(end: 0.0),
                Positioned(
                  top: 50.h,
                  child: Text(
                    'Flutter Dependency Adder',
                    style: AppTheme.theme.textTheme.labelLarge!.copyWith(
                      color: Colors.white,
                    ),
                  )
                      .animate()
                      .fadeIn(duration: const Duration(milliseconds: 500))
                      .moveY(begin: 16, end: 0),
                ),
                Positioned(
                  top: 100.h,
                  child: Material(
                    elevation: 12,
                    type: MaterialType.transparency,
                    child: Image.asset(
                      Assets.logo,
                      width: 220,
                    )
                        .animate(delay: const Duration(milliseconds: 400))
                        .fadeIn(duration: const Duration(milliseconds: 500))
                        .moveY(begin: 16, end: 0),
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
                  )
                      .animate(delay: const Duration(milliseconds: 250))
                      .fadeIn(delay: const Duration(milliseconds: 500))
                      .moveY(begin: 16, end: 0),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Made with ', style: AppTheme.theme.textTheme.labelSmall),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Text(' by ', style: AppTheme.theme.textTheme.labelSmall),
              RichText(
                text: TextSpan(
                  text: 'Koustav Mondal',
                  style: AppTheme.theme.textTheme.labelSmall!
                      .copyWith(color: AppTheme.kDarkRed),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        launchWebUrl('https://github.com/XxThunderBlastxX/'),
                ),
              ),
            ],
          ).animate().scaleXY(
                duration: const Duration(milliseconds: 500),
              ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Give a ', style: AppTheme.theme.textTheme.labelSmall),
              Icon(
                Icons.star,
                color: Colors.yellow.shade700,
              ),
              Text(' on ', style: AppTheme.theme.textTheme.labelSmall),
              RichText(
                text: TextSpan(
                  text: 'Github',
                  style: AppTheme.theme.textTheme.labelSmall!
                      .copyWith(color: AppTheme.kDarkRed),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launchWebUrl(
                        'https://github.com/XxThunderBlastxX/flutter_dependency_adder'),
                ),
              ),
            ],
          ).animate().scaleXY(
                duration: const Duration(milliseconds: 500),
              ),
          12.verticalSpace,
        ],
      ),
    );
  }
}
