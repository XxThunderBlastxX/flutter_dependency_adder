import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/theme/theme.dart';
import '../../../app/utils/assets.dart';
import '../data/repository/jokes_repository.dart';

class MobileScreenPage extends ConsumerWidget {
  const MobileScreenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getJokes = ref.watch(getJokesProvider);

    return getJokes.when(
      data: (joke) => Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Material(
                  elevation: 26,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18.r),
                    bottomRight: Radius.circular(18.r),
                  ),
                  child: Container(
                    height: 60.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.kDarkRed,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18.r),
                        bottomRight: Radius.circular(18.r),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.logo,
                        width: 50.w,
                        height: 50.h,
                      ),
                      Text(
                        'Flutter Dependency Adder',
                        style: AppTheme.theme.textTheme.labelMedium!.copyWith(
                          color: AppTheme.kBackgroundColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            18.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Opps !!! This website is still under development for mobile screen. Please use desktop instead.',
                style: AppTheme.theme.textTheme.labelMedium!.copyWith(
                  color: AppTheme.theme.colorScheme.primary,
                ),
              ),
            ),
            42.verticalSpace,
            Text(
              'But we got some jokes for you 😃',
              style: AppTheme.theme.textTheme.labelMedium!.copyWith(
                fontSize: 16.sp,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 12.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: AppTheme.kGrey,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Question : ${joke.setup}',
                    style: AppTheme.theme.textTheme.labelMedium!
                        .copyWith(fontSize: 16.sp),
                  ),
                  16.verticalSpace,
                  Text(
                    'Answer : ${joke.delivery}',
                    style: AppTheme.theme.textTheme.labelMedium!
                        .copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            Text(
              '😂😂😂',
              style: AppTheme.theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
      error: (err, stackTrace) => const Center(
        child: Text(
          'Something went wrong',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
