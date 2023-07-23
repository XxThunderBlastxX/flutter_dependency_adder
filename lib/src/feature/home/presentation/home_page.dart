import 'package:flutter/material.dart';
import 'package:flutter_dependency_adder/src/app/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  child: SizedBox(
                    width: 0.55.sw,
                    height: 0.2.sh,
                    child: TextField(
                      style: AppTheme.theme.textTheme.labelSmall,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search for a package',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: Colors.black87),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: const BorderSide(color: Colors.black87),
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 12.0, right: 10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black54,
                          ),
                        ),
                      ),
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
