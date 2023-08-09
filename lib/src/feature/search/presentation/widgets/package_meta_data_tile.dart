import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/theme/theme.dart';

class PackageMetadataTile extends StatelessWidget {
  final String title;
  final String value;

  const PackageMetadataTile({
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(
            color: AppTheme.theme.colorScheme.primary,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Text(
                title,
                style: AppTheme.theme.textTheme.labelSmall!.copyWith(
                  fontSize: 12.sp,
                ),
              ),
              Divider(
                color: AppTheme.theme.colorScheme.primary,
                height: 1,
              ),
              Text(
                value,
                style: AppTheme.theme.textTheme.labelSmall!.copyWith(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
