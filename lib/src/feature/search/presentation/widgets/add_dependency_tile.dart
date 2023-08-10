import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/common/widgets/styled_snackbar.dart';
import '../../../../app/theme/theme.dart';

class AddDependencyTile extends StatelessWidget {
  final String title;
  final String command;

  const AddDependencyTile({
    required this.title,
    required this.command,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTheme.theme.textTheme.labelMedium,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  constraints:
                      BoxConstraints(maxWidth: 0.28.sw, minWidth: 0.05.sw),
                  child: Text(
                    command,
                    style: AppTheme.theme.textTheme.labelSmall!.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ),
                IconButton(
                  tooltip: 'Copy to Clipboard',
                  onPressed: () =>
                      Clipboard.setData(ClipboardData(text: command))
                          .whenComplete(
                    () => context.styledBanner('Copied to Clipboard'),
                  ),
                  icon: const Icon(
                    Icons.copy,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
