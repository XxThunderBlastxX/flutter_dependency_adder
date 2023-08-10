import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/theme.dart';

extension StyledBanner on BuildContext {
  void styledBanner(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        behavior: SnackBarBehavior.floating,
        elevation: 12,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        content: Text(
          message,
          style: AppTheme.theme.textTheme.labelSmall!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
