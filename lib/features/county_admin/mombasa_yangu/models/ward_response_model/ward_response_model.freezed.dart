// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ward_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WardResponseModel _$WardResponseModelFromJson(Map<String, dynamic> json) {
  return _WardResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WardResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get subCountyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  SubCounty? get subCounty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WardResponseModelCopyWith<WardResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WardResponseModelCopyWith<$Res> {
  factory $WardResponseModelCopyWith(
          WardResponseModel value, $Res Function(WardResponseModel) then) =
      _$WardResponseModelCopyWithImpl<$Res, WardResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      int? subCountyId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      SubCounty? subCounty});

  $SubCountyCopyWith<$Res>? get subCounty;
}

/// @nodoc
class _$WardResponseModelCopyWithImpl<$Res, $Val extends WardResponseModel>
    implements $WardResponseModelCopyWith<$Res> {
  _$WardResponseModelCopyWithImpl(this._value, this._then);

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
    Object? subCounty = freezed,
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
      subCounty: freezed == subCounty
          ? _value.subCounty
          : subCounty // ignore: cast_nullable_to_non_nullable
              as SubCounty?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCountyCopyWith<$Res>? get subCounty {
    if (_value.subCounty == null) {
      return null;
    }

    return $SubCountyCopyWith<$Res>(_value.subCounty!, (value) {
      return _then(_value.copyWith(subCounty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WardResponseModelImplCopyWith<$Res>
    implements $WardResponseModelCopyWith<$Res> {
  factory _$$WardResponseModelImplCopyWith(_$WardResponseModelImpl value,
          $Res Function(_$WardResponseModelImpl) then) =
      __$$WardResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      int? subCountyId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      SubCounty? subCounty});

  @override
  $SubCountyCopyWith<$Res>? get subCounty;
}

/// @nodoc
class __$$WardResponseModelImplCopyWithImpl<$Res>
    extends _$WardResponseModelCopyWithImpl<$Res, _$WardResponseModelImpl>
    implements _$$WardResponseModelImplCopyWith<$Res> {
  __$$WardResponseModelImplCopyWithImpl(_$WardResponseModelImpl _value,
      $Res Function(_$WardResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? subCountyId = freezed,
    Object? createdAt = freezed,
    Object? subCounty = freezed,
  }) {
    return _then(_$WardResponseModelImpl(
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
      subCounty: freezed == subCounty
          ? _value.subCounty
          : subCounty // ignore: cast_nullable_to_non_nullable
              as SubCounty?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WardResponseModelImpl implements _WardResponseModel {
  _$WardResponseModelImpl(
      {this.id,
      this.name,
      this.code,
      this.subCountyId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.subCounty});

  factory _$WardResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WardResponseModelImplFromJson(json);

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
  final SubCounty? subCounty;

  @override
  String toString() {
    return 'WardResponseModel(id: $id, name: $name, code: $code, subCountyId: $subCountyId, createdAt: $createdAt, subCounty: $subCounty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WardResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.subCountyId, subCountyId) ||
                other.subCountyId == subCountyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.subCounty, subCounty) ||
                other.subCounty == subCounty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, subCountyId, createdAt, subCounty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WardResponseModelImplCopyWith<_$WardResponseModelImpl> get copyWith =>
      __$$WardResponseModelImplCopyWithImpl<_$WardResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WardResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WardResponseModel implements WardResponseModel {
  factory _WardResponseModel(
      {final int? id,
      final String? name,
      final String? code,
      final int? subCountyId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final SubCounty? subCounty}) = _$WardResponseModelImpl;

  factory _WardResponseModel.fromJson(Map<String, dynamic> json) =
      _$WardResponseModelImpl.fromJson;

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
  SubCounty? get subCounty;
  @override
  @JsonKey(ignore: true)
  _$$WardResponseModelImplCopyWith<_$WardResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
