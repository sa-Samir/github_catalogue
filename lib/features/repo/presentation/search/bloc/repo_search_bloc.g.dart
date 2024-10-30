// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_search_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepoSearchState _$RepoSearchStateFromJson(Map<String, dynamic> json) =>
    RepoSearchState(
      keyword: json['keyword'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String,
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      sortBy: json['sort_by'] as String,
      orderBy: json['order_by'] as String,
      totalResults: (json['total_results'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : RepoDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepoSearchStateToJson(RepoSearchState instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'status': _$StatusEnumMap[instance.status]!,
      'error_message': instance.errorMessage,
      'page': instance.page,
      'per_page': instance.perPage,
      'sort_by': instance.sortBy,
      'order_by': instance.orderBy,
      'total_results': instance.totalResults,
      'results': instance.results,
    };

const _$StatusEnumMap = {
  Status.initial: 'initial',
  Status.loading: 'loading',
  Status.success: 'success',
  Status.failure: 'failure',
  Status.paginationLoading: 'paginationLoading',
};
