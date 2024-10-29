// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoDetailsModel _$RepoDetailsModelFromJson(Map<String, dynamic> json) {
  return _RepoDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RepoDetailsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  RepoOwnerModel? get owner => throw _privateConstructorUsedError;
  int? get stargazersCount => throw _privateConstructorUsedError;
  int? get watchersCount => throw _privateConstructorUsedError;
  int? get forksCount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  int? get openIssuesCount => throw _privateConstructorUsedError;
  String? get defaultBranch => throw _privateConstructorUsedError;

  /// Serializes this RepoDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepoDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoDetailsModelCopyWith<RepoDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailsModelCopyWith<$Res> {
  factory $RepoDetailsModelCopyWith(
          RepoDetailsModel value, $Res Function(RepoDetailsModel) then) =
      _$RepoDetailsModelCopyWithImpl<$Res, RepoDetailsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      RepoOwnerModel? owner,
      int? stargazersCount,
      int? watchersCount,
      int? forksCount,
      String? description,
      String? updatedAt,
      String? htmlUrl,
      int? openIssuesCount,
      String? defaultBranch});

  $RepoOwnerModelCopyWith<$Res>? get owner;
}

/// @nodoc
class _$RepoDetailsModelCopyWithImpl<$Res, $Val extends RepoDetailsModel>
    implements $RepoDetailsModelCopyWith<$Res> {
  _$RepoDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? htmlUrl = freezed,
    Object? openIssuesCount = freezed,
    Object? defaultBranch = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as RepoOwnerModel?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchersCount: freezed == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultBranch: freezed == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RepoDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepoOwnerModelCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $RepoOwnerModelCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepoDetailsModelImplCopyWith<$Res>
    implements $RepoDetailsModelCopyWith<$Res> {
  factory _$$RepoDetailsModelImplCopyWith(_$RepoDetailsModelImpl value,
          $Res Function(_$RepoDetailsModelImpl) then) =
      __$$RepoDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      RepoOwnerModel? owner,
      int? stargazersCount,
      int? watchersCount,
      int? forksCount,
      String? description,
      String? updatedAt,
      String? htmlUrl,
      int? openIssuesCount,
      String? defaultBranch});

  @override
  $RepoOwnerModelCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$RepoDetailsModelImplCopyWithImpl<$Res>
    extends _$RepoDetailsModelCopyWithImpl<$Res, _$RepoDetailsModelImpl>
    implements _$$RepoDetailsModelImplCopyWith<$Res> {
  __$$RepoDetailsModelImplCopyWithImpl(_$RepoDetailsModelImpl _value,
      $Res Function(_$RepoDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? htmlUrl = freezed,
    Object? openIssuesCount = freezed,
    Object? defaultBranch = freezed,
  }) {
    return _then(_$RepoDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as RepoOwnerModel?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchersCount: freezed == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultBranch: freezed == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RepoDetailsModelImpl implements _RepoDetailsModel {
  const _$RepoDetailsModelImpl(
      {this.id,
      this.name,
      this.owner,
      this.stargazersCount,
      this.watchersCount,
      this.forksCount,
      this.description,
      this.updatedAt,
      this.htmlUrl,
      this.openIssuesCount,
      this.defaultBranch});

  factory _$RepoDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoDetailsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final RepoOwnerModel? owner;
  @override
  final int? stargazersCount;
  @override
  final int? watchersCount;
  @override
  final int? forksCount;
  @override
  final String? description;
  @override
  final String? updatedAt;
  @override
  final String? htmlUrl;
  @override
  final int? openIssuesCount;
  @override
  final String? defaultBranch;

  @override
  String toString() {
    return 'RepoDetailsModel(id: $id, name: $name, owner: $owner, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, description: $description, updatedAt: $updatedAt, htmlUrl: $htmlUrl, openIssuesCount: $openIssuesCount, defaultBranch: $defaultBranch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.defaultBranch, defaultBranch) ||
                other.defaultBranch == defaultBranch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      owner,
      stargazersCount,
      watchersCount,
      forksCount,
      description,
      updatedAt,
      htmlUrl,
      openIssuesCount,
      defaultBranch);

  /// Create a copy of RepoDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoDetailsModelImplCopyWith<_$RepoDetailsModelImpl> get copyWith =>
      __$$RepoDetailsModelImplCopyWithImpl<_$RepoDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _RepoDetailsModel implements RepoDetailsModel {
  const factory _RepoDetailsModel(
      {final int? id,
      final String? name,
      final RepoOwnerModel? owner,
      final int? stargazersCount,
      final int? watchersCount,
      final int? forksCount,
      final String? description,
      final String? updatedAt,
      final String? htmlUrl,
      final int? openIssuesCount,
      final String? defaultBranch}) = _$RepoDetailsModelImpl;

  factory _RepoDetailsModel.fromJson(Map<String, dynamic> json) =
      _$RepoDetailsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  RepoOwnerModel? get owner;
  @override
  int? get stargazersCount;
  @override
  int? get watchersCount;
  @override
  int? get forksCount;
  @override
  String? get description;
  @override
  String? get updatedAt;
  @override
  String? get htmlUrl;
  @override
  int? get openIssuesCount;
  @override
  String? get defaultBranch;

  /// Create a copy of RepoDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoDetailsModelImplCopyWith<_$RepoDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepoOwnerModel _$RepoOwnerModelFromJson(Map<String, dynamic> json) {
  return _RepoOwnerModel.fromJson(json);
}

/// @nodoc
mixin _$RepoOwnerModel {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;

  /// Serializes this RepoOwnerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepoOwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoOwnerModelCopyWith<RepoOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoOwnerModelCopyWith<$Res> {
  factory $RepoOwnerModelCopyWith(
          RepoOwnerModel value, $Res Function(RepoOwnerModel) then) =
      _$RepoOwnerModelCopyWithImpl<$Res, RepoOwnerModel>;
  @useResult
  $Res call({int? id, String? login, String? avatarUrl, String? htmlUrl});
}

/// @nodoc
class _$RepoOwnerModelCopyWithImpl<$Res, $Val extends RepoOwnerModel>
    implements $RepoOwnerModelCopyWith<$Res> {
  _$RepoOwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoOwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoOwnerModelImplCopyWith<$Res>
    implements $RepoOwnerModelCopyWith<$Res> {
  factory _$$RepoOwnerModelImplCopyWith(_$RepoOwnerModelImpl value,
          $Res Function(_$RepoOwnerModelImpl) then) =
      __$$RepoOwnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? login, String? avatarUrl, String? htmlUrl});
}

/// @nodoc
class __$$RepoOwnerModelImplCopyWithImpl<$Res>
    extends _$RepoOwnerModelCopyWithImpl<$Res, _$RepoOwnerModelImpl>
    implements _$$RepoOwnerModelImplCopyWith<$Res> {
  __$$RepoOwnerModelImplCopyWithImpl(
      _$RepoOwnerModelImpl _value, $Res Function(_$RepoOwnerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoOwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_$RepoOwnerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RepoOwnerModelImpl implements _RepoOwnerModel {
  const _$RepoOwnerModelImpl(
      {this.id, this.login, this.avatarUrl, this.htmlUrl});

  factory _$RepoOwnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoOwnerModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? login;
  @override
  final String? avatarUrl;
  @override
  final String? htmlUrl;

  @override
  String toString() {
    return 'RepoOwnerModel(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoOwnerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, login, avatarUrl, htmlUrl);

  /// Create a copy of RepoOwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoOwnerModelImplCopyWith<_$RepoOwnerModelImpl> get copyWith =>
      __$$RepoOwnerModelImplCopyWithImpl<_$RepoOwnerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoOwnerModelImplToJson(
      this,
    );
  }
}

abstract class _RepoOwnerModel implements RepoOwnerModel {
  const factory _RepoOwnerModel(
      {final int? id,
      final String? login,
      final String? avatarUrl,
      final String? htmlUrl}) = _$RepoOwnerModelImpl;

  factory _RepoOwnerModel.fromJson(Map<String, dynamic> json) =
      _$RepoOwnerModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get login;
  @override
  String? get avatarUrl;
  @override
  String? get htmlUrl;

  /// Create a copy of RepoOwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoOwnerModelImplCopyWith<_$RepoOwnerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
