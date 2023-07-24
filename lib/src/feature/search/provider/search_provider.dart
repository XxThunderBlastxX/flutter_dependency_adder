import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/models/packages/packages.dart';

final searchPackageNotifierProvider =
    StateNotifierProvider<SearchPackageNotifier, List<PackageModel>>(
  (ref) => SearchPackageNotifier(),
);

class SearchPackageNotifier extends StateNotifier<List<PackageModel>> {
  SearchPackageNotifier() : super([]);

  void addPackage(PackageModel package) {
    state = [...state, package];
  }
}
