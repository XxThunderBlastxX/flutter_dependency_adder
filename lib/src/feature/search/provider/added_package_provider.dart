import 'package:flutter_riverpod/flutter_riverpod.dart';

final addedPackageNotifierProvider =
    StateNotifierProvider<AddedPackageNotifier, Set<String>>(
  (ref) => AddedPackageNotifier(),
);

final addedDevPackageNotifierProvider =
    StateNotifierProvider<AddedDevPackageNotifier, Set<String>>(
  (ref) => AddedDevPackageNotifier(),
);

class AddedPackageNotifier extends StateNotifier<Set<String>> {
  AddedPackageNotifier() : super({});

  void addPackage(String package) {
    state = {...state, package};
  }

  void removePackage(String package) {
    state = state.where((element) => element != package).toSet();
  }

  void clear() {
    state = {};
  }
}

class AddedDevPackageNotifier extends StateNotifier<Set<String>> {
  AddedDevPackageNotifier() : super({});

  void addPackage(String package) {
    state = {...state, package};
  }

  void removePackage(String package) {
    state = state.where((element) => element != package).toSet();
  }

  void clear() {
    state = {};
  }
}
