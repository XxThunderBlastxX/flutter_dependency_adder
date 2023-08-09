import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/theme/theme.dart';
import '../../../../app/utils/launch_url.dart';
import 'add_dependency_button.dart';
import 'package_meta_data_tile.dart';

class PackageTile extends ConsumerWidget {
  final String title;
  final String desc;
  final String version;
  final String likes;
  final String pubPoints;
  final String popularity;
  final bool isAddedAsDependency;
  final bool isAddedAsDevDependency;

  const PackageTile({
    super.key,
    required this.title,
    required this.desc,
    required this.version,
    required this.likes,
    required this.pubPoints,
    required this.popularity,
    required this.isAddedAsDependency,
    required this.isAddedAsDevDependency,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.kGrey,
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 0.42.sw, minWidth: 0.0),
              // width: 0.42.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: title,
                          style: AppTheme.theme.textTheme.labelMedium!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black87,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                launchWebUrl("https://pub.dev/packages/$title"),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_outward,
                        color: Colors.black87,
                      )
                    ],
                  ),
                  Text(
                    version,
                    style: AppTheme.theme.textTheme.labelSmall!
                        .copyWith(fontSize: 12.sp),
                  ),
                  8.verticalSpace,
                  Text(
                    desc,
                    style: AppTheme.theme.textTheme.labelSmall,
                  ),
                  12.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          PackageMetadataTile(
                            title: 'Likes',
                            value: likes,
                          ),
                          PackageMetadataTile(
                            title: 'Pub Points',
                            value: pubPoints,
                          ),
                          PackageMetadataTile(
                            title: 'Popularity',
                            value: popularity,
                          ),
                        ],
                      ),
                      1.sw >= 1200
                          ? AddDependencyButton(
                              packageName: title,
                              isAddedAsDependency: isAddedAsDependency,
                              isAddedAsDevDependency: isAddedAsDevDependency,
                            )
                          : const SizedBox(),
                    ],
                  ),
                  8.verticalSpace,
                  1.sw <= 1200
                      ? AddDependencyButton(
                          packageName: title,
                          isAddedAsDependency: isAddedAsDependency,
                          isAddedAsDevDependency: isAddedAsDevDependency,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
