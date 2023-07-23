// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageModel _$PackageModelFromJson(Map<String, dynamic> json) {
  return _PackageModel.fromJson(json);
}

/// @nodoc
mixin _$PackageModel {
  String get title => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get pubPoints => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageModelCopyWith<PackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageModelCopyWith<$Res> {
  factory $PackageModelCopyWith(
          PackageModel value, $Res Function(PackageModel) then) =
      _$PackageModelCopyWithImpl<$Res, PackageModel>;
  @useResult
  $Res call(
      {String title,
      String desc,
      String version,
      int likes,
      int pubPoints,
      int popularity,
      String imgUrl});
}

/// @nodoc
class _$PackageModelCopyWithImpl<$Res, $Val extends PackageModel>
    implements $PackageModelCopyWith<$Res> {
  _$PackageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? desc = null,
    Object? version = null,
    Object? likes = null,
    Object? pubPoints = null,
    Object? popularity = null,
    Object? imgUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      pubPoints: null == pubPoints
          ? _value.pubPoints
          : pubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageModelCopyWith<$Res>
    implements $PackageModelCopyWith<$Res> {
  factory _$$_PackageModelCopyWith(
          _$_PackageModel value, $Res Function(_$_PackageModel) then) =
      __$$_PackageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String desc,
      String version,
      int likes,
      int pubPoints,
      int popularity,
      String imgUrl});
}

/// @nodoc
class __$$_PackageModelCopyWithImpl<$Res>
    extends _$PackageModelCopyWithImpl<$Res, _$_PackageModel>
    implements _$$_PackageModelCopyWith<$Res> {
  __$$_PackageModelCopyWithImpl(
      _$_PackageModel _value, $Res Function(_$_PackageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? desc = null,
    Object? version = null,
    Object? likes = null,
    Object? pubPoints = null,
    Object? popularity = null,
    Object? imgUrl = null,
  }) {
    return _then(_$_PackageModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      pubPoints: null == pubPoints
          ? _value.pubPoints
          : pubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageModel implements _PackageModel {
  const _$_PackageModel(
      {required this.title,
      required this.desc,
      required this.version,
      required this.likes,
      required this.pubPoints,
      required this.popularity,
      required this.imgUrl});

  factory _$_PackageModel.fromJson(Map<String, dynamic> json) =>
      _$$_PackageModelFromJson(json);

  @override
  final String title;
  @override
  final String desc;
  @override
  final String version;
  @override
  final int likes;
  @override
  final int pubPoints;
  @override
  final int popularity;
  @override
  final String imgUrl;

  @override
  String toString() {
    return 'PackageModel(title: $title, desc: $desc, version: $version, likes: $likes, pubPoints: $pubPoints, popularity: $popularity, imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.pubPoints, pubPoints) ||
                other.pubPoints == pubPoints) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, desc, version, likes, pubPoints, popularity, imgUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageModelCopyWith<_$_PackageModel> get copyWith =>
      __$$_PackageModelCopyWithImpl<_$_PackageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageModelToJson(
      this,
    );
  }
}

abstract class _PackageModel implements PackageModel {
  const factory _PackageModel(
      {required final String title,
      required final String desc,
      required final String version,
      required final int likes,
      required final int pubPoints,
      required final int popularity,
      required final String imgUrl}) = _$_PackageModel;

  factory _PackageModel.fromJson(Map<String, dynamic> json) =
      _$_PackageModel.fromJson;

  @override
  String get title;
  @override
  String get desc;
  @override
  String get version;
  @override
  int get likes;
  @override
  int get pubPoints;
  @override
  int get popularity;
  @override
  String get imgUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PackageModelCopyWith<_$_PackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
