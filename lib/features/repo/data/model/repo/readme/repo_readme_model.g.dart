// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_readme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoReadmeModelImpl _$$RepoReadmeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepoReadmeModelImpl(
      name: json['name'] as String?,
      content: json['content'] as String?,
      encoding: json['encoding'] as String?,
    );

Map<String, dynamic> _$$RepoReadmeModelImplToJson(
        _$RepoReadmeModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'encoding': instance.encoding,
    };
