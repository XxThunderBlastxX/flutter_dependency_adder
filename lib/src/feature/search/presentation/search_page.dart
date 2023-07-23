import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repository/package_repository.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final repo = ref.read(packageRepositoryProvider);

      await repo
          .searchPackage(widget.query)
          .then((value) => value.fold((l) => print(l), (r) => print(r)));
    });

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          widget.query,
          style: TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}
