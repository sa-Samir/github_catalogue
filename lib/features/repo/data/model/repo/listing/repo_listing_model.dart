import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/type_defs.dart';
import '../details/repo_details_model.dart';

part 'repo_listing_model.freezed.dart';
part 'repo_listing_model.g.dart';

RepoListingModel repoListingModelFromJson(String? data) =>
    RepoListingModel.fromJson(json.decode(data ?? ''));

@freezed
class RepoListingModel with _$RepoListingModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RepoListingModel({
    required int? totalCount,
    required List<RepoDetailsModel?>? items,
  }) = _RepoListingModel;

  factory RepoListingModel.fromJson(JsonMap json) =>
      _$RepoListingModelFromJson(json);
}
