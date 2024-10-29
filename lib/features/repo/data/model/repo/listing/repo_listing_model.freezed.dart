// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoListingModel _$RepoListingModelFromJson(Map<String, dynamic> json) {
  return _RepoListingModel.fromJson(json);
}

/// @nodoc
mixin _$RepoListingModel {
  int? get totalCount => throw _privateConstructorUsedError;
  List<RepoDetailsModel?>? get items => throw _privateConstructorUsedError;

  /// Serializes this RepoListingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepoListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoListingModelCopyWith<RepoListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoListingModelCopyWith<$Res> {
  factory $RepoListingModelCopyWith(
          RepoListingModel value, $Res Function(RepoListingModel) then) =
      _$RepoListingModelCopyWithImpl<$Res, RepoListingModel>;
  @useResult
  $Res call({int? totalCount, List<RepoDetailsModel?>? items});
}

/// @nodoc
class _$RepoListingModelCopyWithImpl<$Res, $Val extends RepoListingModel>
    implements $RepoListingModelCopyWith<$Res> {
  _$RepoListingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepoDetailsModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoListingModelImplCopyWith<$Res>
    implements $RepoListingModelCopyWith<$Res> {
  factory _$$RepoListingModelImplCopyWith(_$RepoListingModelImpl value,
          $Res Function(_$RepoListingModelImpl) then) =
      __$$RepoListingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalCount, List<RepoDetailsModel?>? items});
}

/// @nodoc
class __$$RepoListingModelImplCopyWithImpl<$Res>
    extends _$RepoListingModelCopyWithImpl<$Res, _$RepoListingModelImpl>
    implements _$$RepoListingModelImplCopyWith<$Res> {
  __$$RepoListingModelImplCopyWithImpl(_$RepoListingModelImpl _value,
      $Res Function(_$RepoListingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
  }) {
    return _then(_$RepoListingModelImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepoDetailsModel?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RepoListingModelImpl implements _RepoListingModel {
  const _$RepoListingModelImpl(
      {required this.totalCount, required final List<RepoDetailsModel?>? items})
      : _items = items;

  factory _$RepoListingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoListingModelImplFromJson(json);

  @override
  final int? totalCount;
  final List<RepoDetailsModel?>? _items;
  @override
  List<RepoDetailsModel?>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RepoListingModel(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoListingModelImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_items));

  /// Create a copy of RepoListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoListingModelImplCopyWith<_$RepoListingModelImpl> get copyWith =>
      __$$RepoListingModelImplCopyWithImpl<_$RepoListingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoListingModelImplToJson(
      this,
    );
  }
}

abstract class _RepoListingModel implements RepoListingModel {
  const factory _RepoListingModel(
      {required final int? totalCount,
      required final List<RepoDetailsModel?>? items}) = _$RepoListingModelImpl;

  factory _RepoListingModel.fromJson(Map<String, dynamic> json) =
      _$RepoListingModelImpl.fromJson;

  @override
  int? get totalCount;
  @override
  List<RepoDetailsModel?>? get items;

  /// Create a copy of RepoListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoListingModelImplCopyWith<_$RepoListingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
