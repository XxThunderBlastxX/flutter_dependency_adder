import 'package:flutter/material.dart';

import '../../../../app/theme/theme.dart';

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
                  style: AppTheme.theme.textTheme.labelSmall,
                ),
                IconButton(
                  tooltip: 'Copy to Clipboard',
                  onPressed: () {}, // TODO: Implement copy to clipboard
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
