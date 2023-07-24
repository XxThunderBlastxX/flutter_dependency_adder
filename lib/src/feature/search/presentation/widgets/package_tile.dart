import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/theme/theme.dart';
import 'package_meta_data_tile.dart';

class PackageTile extends StatelessWidget {
  final String title;
  final String desc;
  final String version;
  final String likes;
  final String pubPoints;
  final String popularity;

  const PackageTile({
    super.key,
    required this.title,
    required this.desc,
    required this.version,
    required this.likes,
    required this.pubPoints,
    required this.popularity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF8D99AE),
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            SizedBox(
              width: 0.4.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: AppTheme.theme.textTheme.labelMedium,
                      ),
                      3.horizontalSpace,
                      Text(
                        version,
                        style: AppTheme.theme.textTheme.labelSmall!
                            .copyWith(fontSize: 12.sp),
                      ),
                    ],
                  ),
                  5.verticalSpace,
                  Text(
                    desc,
                    style: AppTheme.theme.textTheme.labelSmall,
                  ),
                  16.verticalSpace,
                  Row(
                    children: [
                      PackageMetadataTile(title: 'Likes', value: likes),
                      PackageMetadataTile(
                          title: 'Pub Points', value: pubPoints),
                      PackageMetadataTile(
                          title: 'Popularity', value: popularity),
                    ],
                  ),
                ],
              ),
            ),
            // Meta Data

            const Spacer(),
            IconButton.outlined(
              tooltip: 'Add Dependency',
              onPressed: () {},
              isSelected: false,
              color: Colors.red,
              selectedIcon: Icon(
                Icons.check,
                color: Colors.black87,
              ),
              icon: Icon(
                Icons.add,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
    );
  }
}
