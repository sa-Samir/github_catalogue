// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoDetailsModelImpl _$$RepoDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepoDetailsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : RepoOwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      stargazersCount: (json['stargazers_count'] as num?)?.toInt(),
      watchersCount: (json['watchers_count'] as num?)?.toInt(),
      forksCount: (json['forks_count'] as num?)?.toInt(),
      description: json['description'] as String?,
      updatedAt: json['updated_at'] as String?,
      htmlUrl: json['html_url'] as String?,
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt(),
      defaultBranch: json['default_branch'] as String?,
    );

Map<String, dynamic> _$$RepoDetailsModelImplToJson(
        _$RepoDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'description': instance.description,
      'updated_at': instance.updatedAt,
      'html_url': instance.htmlUrl,
      'open_issues_count': instance.openIssuesCount,
      'default_branch': instance.defaultBranch,
    };

_$RepoOwnerModelImpl _$$RepoOwnerModelImplFromJson(Map<String, dynamic> json) =>
    _$RepoOwnerModelImpl(
      id: (json['id'] as num?)?.toInt(),
      login: json['login'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      htmlUrl: json['html_url'] as String?,
    );

Map<String, dynamic> _$$RepoOwnerModelImplToJson(
        _$RepoOwnerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };
