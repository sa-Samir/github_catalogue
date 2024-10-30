import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/type_defs.dart';

part 'repo_readme_model.freezed.dart';
part 'repo_readme_model.g.dart';

RepoReadmeModel repoReadmeModelFromJson(String? data) =>
    RepoReadmeModel.fromJson(json.decode(data ?? ''));

@freezed
class RepoReadmeModel with _$RepoReadmeModel {
  const factory RepoReadmeModel({
    final String? name,
    final String? content,
    final String? encoding,
  }) = _RepoReadmeModel;

  factory RepoReadmeModel.fromJson(JsonMap json) =>
      _$RepoReadmeModelFromJson(json);
}
