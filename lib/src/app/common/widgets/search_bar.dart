import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/theme.dart';

final searchBarControllerProvider = Provider(
  (ref) => TextEditingController(),
);

class StyledSearchBar extends ConsumerWidget {
  final void Function(String) onFieldSubmitted;
  final double width;
  final double height;

  const StyledSearchBar({
    super.key,
    required this.onFieldSubmitted,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(searchBarControllerProvider);

    return SizedBox(
      width: width, //0.55.sw,
      height: height, //0.2.sh,
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.done,
        onFieldSubmitted: onFieldSubmitted,
        style: AppTheme.theme.textTheme.labelSmall,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search for a package',
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () => controller.clear(),
              icon: const Icon(
                Icons.clear,
                color: Colors.black87,
              ),
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
    );
  }
}
