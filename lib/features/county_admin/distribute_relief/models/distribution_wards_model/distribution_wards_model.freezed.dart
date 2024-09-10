// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distribution_wards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistributionWardsModel _$DistributionWardsModelFromJson(
    Map<String, dynamic> json) {
  return _DistributionWardsModel.fromJson(json);
}

/// @nodoc
mixin _$DistributionWardsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get subCountyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistributionWardsModelCopyWith<DistributionWardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributionWardsModelCopyWith<$Res> {
  factory $DistributionWardsModelCopyWith(DistributionWardsModel value,
          $Res Function(DistributionWardsModel) then) =
      _$DistributionWardsModelCopyWithImpl<$Res, DistributionWardsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      int? subCountyId,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$DistributionWardsModelCopyWithImpl<$Res,
        $Val extends DistributionWardsModel>
    implements $DistributionWardsModelCopyWith<$Res> {
  _$DistributionWardsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? subCountyId = freezed,
    Object? createdAt = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      subCountyId: freezed == subCountyId
          ? _value.subCountyId
          : subCountyId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistributionWardsModelImplCopyWith<$Res>
    implements $DistributionWardsModelCopyWith<$Res> {
  factory _$$DistributionWardsModelImplCopyWith(
          _$DistributionWardsModelImpl value,
          $Res Function(_$DistributionWardsModelImpl) then) =
      __$$DistributionWardsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      int? subCountyId,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$DistributionWardsModelImplCopyWithImpl<$Res>
    extends _$DistributionWardsModelCopyWithImpl<$Res,
        _$DistributionWardsModelImpl>
    implements _$$DistributionWardsModelImplCopyWith<$Res> {
  __$$DistributionWardsModelImplCopyWithImpl(
      _$DistributionWardsModelImpl _value,
      $Res Function(_$DistributionWardsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? subCountyId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$DistributionWardsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      subCountyId: freezed == subCountyId
          ? _value.subCountyId
          : subCountyId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistributionWardsModelImpl implements _DistributionWardsModel {
  _$DistributionWardsModelImpl(
      {this.id,
      this.name,
      this.code,
      this.subCountyId,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$DistributionWardsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistributionWardsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final int? subCountyId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DistributionWardsModel(id: $id, name: $name, code: $code, subCountyId: $subCountyId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistributionWardsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.subCountyId, subCountyId) ||
                other.subCountyId == subCountyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, code, subCountyId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistributionWardsModelImplCopyWith<_$DistributionWardsModelImpl>
      get copyWith => __$$DistributionWardsModelImplCopyWithImpl<
          _$DistributionWardsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistributionWardsModelImplToJson(
      this,
    );
  }
}

abstract class _DistributionWardsModel implements DistributionWardsModel {
  factory _DistributionWardsModel(
          {final int? id,
          final String? name,
          final String? code,
          final int? subCountyId,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$DistributionWardsModelImpl;

  factory _DistributionWardsModel.fromJson(Map<String, dynamic> json) =
      _$DistributionWardsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  int? get subCountyId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$DistributionWardsModelImplCopyWith<_$DistributionWardsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
