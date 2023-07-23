import 'package:freezed_annotation/freezed_annotation.dart';

part 'packages.freezed.dart';
part 'packages.g.dart';

@freezed
class PackageModel with _$PackageModel {
  const factory PackageModel({
    required String title,
    required String desc,
    required String version,
    required int likes,
    required int pubPoints,
    required int popularity,
    required String imgUrl,
  }) = _PackageModel;

  factory PackageModel.fromJson(Map<String, Object?> json) =>
      _$PackageModelFromJson(json);
}
