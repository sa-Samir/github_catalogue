// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_readme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoReadmeModel _$RepoReadmeModelFromJson(Map<String, dynamic> json) {
  return _RepoReadmeModel.fromJson(json);
}

/// @nodoc
mixin _$RepoReadmeModel {
  String? get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get encoding => throw _privateConstructorUsedError;

  /// Serializes this RepoReadmeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepoReadmeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoReadmeModelCopyWith<RepoReadmeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoReadmeModelCopyWith<$Res> {
  factory $RepoReadmeModelCopyWith(
          RepoReadmeModel value, $Res Function(RepoReadmeModel) then) =
      _$RepoReadmeModelCopyWithImpl<$Res, RepoReadmeModel>;
  @useResult
  $Res call({String? name, String? content, String? encoding});
}

/// @nodoc
class _$RepoReadmeModelCopyWithImpl<$Res, $Val extends RepoReadmeModel>
    implements $RepoReadmeModelCopyWith<$Res> {
  _$RepoReadmeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoReadmeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? encoding = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoReadmeModelImplCopyWith<$Res>
    implements $RepoReadmeModelCopyWith<$Res> {
  factory _$$RepoReadmeModelImplCopyWith(_$RepoReadmeModelImpl value,
          $Res Function(_$RepoReadmeModelImpl) then) =
      __$$RepoReadmeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? content, String? encoding});
}

/// @nodoc
class __$$RepoReadmeModelImplCopyWithImpl<$Res>
    extends _$RepoReadmeModelCopyWithImpl<$Res, _$RepoReadmeModelImpl>
    implements _$$RepoReadmeModelImplCopyWith<$Res> {
  __$$RepoReadmeModelImplCopyWithImpl(
      _$RepoReadmeModelImpl _value, $Res Function(_$RepoReadmeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoReadmeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? encoding = freezed,
  }) {
    return _then(_$RepoReadmeModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoReadmeModelImpl implements _RepoReadmeModel {
  const _$RepoReadmeModelImpl({this.name, this.content, this.encoding});

  factory _$RepoReadmeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoReadmeModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? content;
  @override
  final String? encoding;

  @override
  String toString() {
    return 'RepoReadmeModel(name: $name, content: $content, encoding: $encoding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoReadmeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, content, encoding);

  /// Create a copy of RepoReadmeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoReadmeModelImplCopyWith<_$RepoReadmeModelImpl> get copyWith =>
      __$$RepoReadmeModelImplCopyWithImpl<_$RepoReadmeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoReadmeModelImplToJson(
      this,
    );
  }
}

abstract class _RepoReadmeModel implements RepoReadmeModel {
  const factory _RepoReadmeModel(
      {final String? name,
      final String? content,
      final String? encoding}) = _$RepoReadmeModelImpl;

  factory _RepoReadmeModel.fromJson(Map<String, dynamic> json) =
      _$RepoReadmeModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get content;
  @override
  String? get encoding;

  /// Create a copy of RepoReadmeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoReadmeModelImplCopyWith<_$RepoReadmeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
