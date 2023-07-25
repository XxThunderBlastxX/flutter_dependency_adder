import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/theme/theme.dart';
import '../../provider/added_package_provider.dart';

class AddDependencyButton extends ConsumerWidget {
  final String packageName;

  const AddDependencyButton({
    super.key,
    required this.packageName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addedPackage = ref.watch(addedPackageNotifierProvider.notifier);
    final addedDevPackage = ref.watch(addedDevPackageNotifierProvider.notifier);

    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: 0.15.sw,
          ),
          width: 1.sw >= 1200 ? 0.15.sw : 0.105.sw,
          child: ElevatedButton(
            onPressed: () => addedPackage.addPackage(packageName),
            child: Text(
              'Add as Dependency',
              style: AppTheme.theme.textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        6.verticalSpace,
        Container(
          constraints: BoxConstraints(
            maxWidth: 0.18.sw,
          ),
          width: 1.sw >= 1200 ? 0.18.sw : 0.115.sw,
          child: ElevatedButton(
            onPressed: () => addedDevPackage.addPackage(packageName),
            child: Text(
              'Add as Dev Dependency',
              style: AppTheme.theme.textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
