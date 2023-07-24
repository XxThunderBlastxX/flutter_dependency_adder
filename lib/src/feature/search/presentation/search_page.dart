import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/theme/theme.dart';
import '../data/repository/package_repository.dart';
import '../provider/added_package_provider.dart';
import 'widgets/add_dependency_tile.dart';
import 'widgets/package_tile.dart';
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
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final addedPackage = ref.watch(addedPackageNotifierProvider);
    final addedDevPackage = ref.watch(addedDevPackageNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.kRed,
      ),
      body: Column(
        children: [
          const SearchSection(),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    Consumer(
                      builder: (context, ref, _) {
                        final getPackages =
                            ref.watch(searchPackageProvider(widget.query));

                        return getPackages.when(
                          data: (data) => data.fold(
                            (packages) => SizedBox(
                              height: 0.75.sh,
                              child: RawScrollbar(
                                thumbColor: AppTheme.kBlack,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                trackVisibility: true,
                                controller: _scrollController,
                                interactive: true,
                                thumbVisibility: true,
                                trackColor: AppTheme.kGrey,
                                trackRadius: const Radius.circular(8),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: packages.length,
                                    controller: _scrollController,
                                    itemBuilder: (context, index) =>
                                        PackageTile(
                                      title: packages[index].title,
                                      desc: packages[index].desc,
                                      version: packages[index].version,
                                      likes: packages[index].likes.toString(),
                                      pubPoints:
                                          packages[index].pubPoints.toString(),
                                      popularity:
                                          packages[index].popularity.toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            (err) => Text(err.toString()),
                          ),
                          error: (err, stack) => Text(err.toString()),
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              // This shows the command to add the dependency
              Column(
                children: [
                  60.verticalSpace,
                  AddDependencyTile(
                    title: 'Add Dependency',
                    command: addedPackage.isEmpty
                        ? 'No Package Added'
                        : 'flutter pub add ${addedPackage.join(" ")}',
                  ),
                  22.verticalSpace,
                  AddDependencyTile(
                    title: 'Add Dev Dependency',
                    command: addedDevPackage.isEmpty
                        ? 'No Dev Package Added'
                        : 'flutter pub add --dev ${addedDevPackage.join(" ")}',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
