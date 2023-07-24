import 'package:flutter/material.dart';
import 'package:flutter_dependency_adder/src/app/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/search_section.dart';

class SearchPage extends ConsumerStatefulWidget {
  final String query;

  const SearchPage({
    super.key,
    required this.query,
  });

  @override
  ConsumerState createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD90429),
      ),
      body: Column(
        children: [
          const SearchSection(),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // This shows the list of searched dependencies
              SizedBox(
                width: 1.sw / 2.00,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    18.verticalSpace,
                    Text(
                      'Search Results : ${widget.query}',
                      style: AppTheme.theme.textTheme.labelLarge,
                    ),
                    12.verticalSpace,
                    SizedBox(
                      height: 0.73.sh,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(
                            'Dependency $index',
                            style: AppTheme.theme.textTheme.labelMedium,
                          ),
                          subtitle: Text(
                            'Description $index',
                            style: AppTheme.theme.textTheme.labelSmall,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // This acts as a divider between the two sections
              VerticalDivider(color: Color(0xFF2B2D42), width: 2),
              // This shows the command to add the dependency
              Column(),
            ],
          ),
        ],
      ),
    );
  }
}
