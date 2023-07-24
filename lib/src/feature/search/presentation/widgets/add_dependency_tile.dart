import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../app/theme/theme.dart';
import '../../../../app/utils/styled_snackbar.dart';

class AddDependencyTile extends StatelessWidget {
  final String title;
  final String command;

  const AddDependencyTile({
    super.key,
    required this.title,
    required this.command,
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
                Text(
                  command,
                  style: AppTheme.theme.textTheme.labelSmall!.copyWith(
                    fontSize: 15,
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
