import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/type_defs.dart';

part 'repo_details_model.freezed.dart';
part 'repo_details_model.g.dart';

RepoDetailsModel repoDetailsModelFromJson(String? data) =>
    RepoDetailsModel.fromJson(json.decode(data ?? ''));

@freezed
class RepoDetailsModel with _$RepoDetailsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RepoDetailsModel({
    final int? id,
    final String? name,
    final RepoOwnerModel? owner,
    final int? stargazersCount,
    final int? watchersCount,
    final int? forksCount,
    final String? description,
    final String? updatedAt,
    final String? htmlUrl,
    final int? openIssuesCount,
    final String? defaultBranch,
  }) = _RepoDetailsModel;

  factory RepoDetailsModel.fromJson(JsonMap json) =>
      _$RepoDetailsModelFromJson(json);
}

@freezed
class RepoOwnerModel with _$RepoOwnerModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RepoOwnerModel({
    final int? id,
    final String? login,
    final String? avatarUrl,
    final String? htmlUrl,
  }) = _RepoOwnerModel;

  factory RepoOwnerModel.fromJson(JsonMap json) =>
      _$RepoOwnerModelFromJson(json);
}
