import 'package:flutter/material.dart';
import 'package:flutter_dependency_adder/src/app/common/widgets/search_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routemaster/routemaster.dart';

import '../../../app/router/router.dart';

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
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   final repo = ref.read(packageRepositoryProvider);
    //
    //   await repo
    //       .searchPackage(widget.query)
    //       .then((value) => value.fold((l) => print(l), (r) => print(r)));
    // });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD90429),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 0.08.sh,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 35.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFD90429),
                        Color(0xFF8d0801),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 20,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: StyledSearchBar(
                      onFieldSubmitted: (value) => Routemaster.of(context).push(
                          AppRouterPath.search,
                          queryParameters: {'q': value.trim()}),
                      width: 0.55.sw,
                      height: 45.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
