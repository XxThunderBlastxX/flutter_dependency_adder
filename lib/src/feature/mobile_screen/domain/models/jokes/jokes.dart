import 'package:freezed_annotation/freezed_annotation.dart';

part 'jokes.freezed.dart';
part 'jokes.g.dart';

@freezed
class JokesModel with _$JokesModel {
  const factory JokesModel({
    required String setup,
    required String delivery,
  }) = _JokesModel;

  factory JokesModel.fromJson(Map<String, dynamic> json) =>
      _$JokesModelFromJson(json);
}
