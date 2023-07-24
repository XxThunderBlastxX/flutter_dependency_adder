import 'package:flutter_riverpod/flutter_riverpod.dart';

final addedPackageNotifierProvider =
    StateNotifierProvider<AddedPackageNotifier, List<String>>(
  (ref) => AddedPackageNotifier(),
);

final addedDevPackageNotifierProvider =
    StateNotifierProvider<AddedDevPackageNotifier, List<String>>(
  (ref) => AddedDevPackageNotifier(),
);

class AddedPackageNotifier extends StateNotifier<List<String>> {
  AddedPackageNotifier() : super([]);

  void addPackage(String package) {
    state = [...state, package];
  }

  void removePackage(String package) {
    state = state.where((element) => element != package).toList();
  }

  void clear() {
    state = [];
  }
}

class AddedDevPackageNotifier extends StateNotifier<List<String>> {
  AddedDevPackageNotifier() : super([]);

  void addPackage(String package) {
    state = [...state, package];
  }

  void removePackage(String package) {
    state = state.where((element) => element != package).toList();
  }

  void clear() {
    state = [];
  }
}
