// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WardsModel _$WardsModelFromJson(Map<String, dynamic> json) {
  return _WardsModel.fromJson(json);
}

/// @nodoc
mixin _$WardsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get gprs => throw _privateConstructorUsedError;
  int? get subCountyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  SubCounty? get subCounty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WardsModelCopyWith<WardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WardsModelCopyWith<$Res> {
  factory $WardsModelCopyWith(
          WardsModel value, $Res Function(WardsModel) then) =
      _$WardsModelCopyWithImpl<$Res, WardsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? gprs,
      int? subCountyId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      SubCounty? subCounty});

  $SubCountyCopyWith<$Res>? get subCounty;
}

/// @nodoc
class _$WardsModelCopyWithImpl<$Res, $Val extends WardsModel>
    implements $WardsModelCopyWith<$Res> {
  _$WardsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? gprs = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gprs: freezed == gprs
          ? _value.gprs
          : gprs // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WardsModelImplCopyWith<$Res>
    implements $WardsModelCopyWith<$Res> {
  factory _$$WardsModelImplCopyWith(
          _$WardsModelImpl value, $Res Function(_$WardsModelImpl) then) =
      __$$WardsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? gprs,
      int? subCountyId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      SubCounty? subCounty});

  @override
  $SubCountyCopyWith<$Res>? get subCounty;
}

/// @nodoc
class __$$WardsModelImplCopyWithImpl<$Res>
    extends _$WardsModelCopyWithImpl<$Res, _$WardsModelImpl>
    implements _$$WardsModelImplCopyWith<$Res> {
  __$$WardsModelImplCopyWithImpl(
      _$WardsModelImpl _value, $Res Function(_$WardsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? gprs = freezed,
    Object? subCountyId = freezed,
    Object? createdAt = freezed,
    Object? subCounty = freezed,
  }) {
    return _then(_$WardsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gprs: freezed == gprs
          ? _value.gprs
          : gprs // ignore: cast_nullable_to_non_nullable
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
class _$WardsModelImpl implements _WardsModel {
  _$WardsModelImpl(
      {this.id,
      this.name,
      this.description,
      this.gprs,
      this.subCountyId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.subCounty});

  factory _$WardsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WardsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? gprs;
  @override
  final int? subCountyId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final SubCounty? subCounty;

  @override
  String toString() {
    return 'WardsModel(id: $id, name: $name, description: $description, gprs: $gprs, subCountyId: $subCountyId, createdAt: $createdAt, subCounty: $subCounty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WardsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gprs, gprs) || other.gprs == gprs) &&
            (identical(other.subCountyId, subCountyId) ||
                other.subCountyId == subCountyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.subCounty, subCounty) ||
                other.subCounty == subCounty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, gprs,
      subCountyId, createdAt, subCounty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WardsModelImplCopyWith<_$WardsModelImpl> get copyWith =>
      __$$WardsModelImplCopyWithImpl<_$WardsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WardsModelImplToJson(
      this,
    );
  }
}

abstract class _WardsModel implements WardsModel {
  factory _WardsModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? gprs,
      final int? subCountyId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final SubCounty? subCounty}) = _$WardsModelImpl;

  factory _WardsModel.fromJson(Map<String, dynamic> json) =
      _$WardsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get gprs;
  @override
  int? get subCountyId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  SubCounty? get subCounty;
  @override
  @JsonKey(ignore: true)
  _$$WardsModelImplCopyWith<_$WardsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
