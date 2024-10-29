// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoListingModelImpl _$$RepoListingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepoListingModelImpl(
      totalCount: (json['total_count'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : RepoDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepoListingModelImplToJson(
        _$RepoListingModelImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };
