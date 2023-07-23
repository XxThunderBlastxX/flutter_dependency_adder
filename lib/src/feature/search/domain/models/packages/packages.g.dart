// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageModel _$$_PackageModelFromJson(Map<String, dynamic> json) =>
    _$_PackageModel(
      title: json['title'] as String,
      desc: json['desc'] as String,
      version: json['version'] as String,
      likes: json['likes'] as int,
      pubPoints: json['pubPoints'] as int,
      popularity: json['popularity'] as int,
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$$_PackageModelToJson(_$_PackageModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'version': instance.version,
      'likes': instance.likes,
      'pubPoints': instance.pubPoints,
      'popularity': instance.popularity,
      'imgUrl': instance.imgUrl,
    };
