// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_county_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubCountyModel _$SubCountyModelFromJson(Map<String, dynamic> json) {
  return _SubCountyModel.fromJson(json);
}

/// @nodoc
mixin _$SubCountyModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get gprs => throw _privateConstructorUsedError;
  int? get countyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  County? get county => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCountyModelCopyWith<SubCountyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCountyModelCopyWith<$Res> {
  factory $SubCountyModelCopyWith(
          SubCountyModel value, $Res Function(SubCountyModel) then) =
      _$SubCountyModelCopyWithImpl<$Res, SubCountyModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? gprs,
      int? countyId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      County? county});

  $CountyCopyWith<$Res>? get county;
}

/// @nodoc
class _$SubCountyModelCopyWithImpl<$Res, $Val extends SubCountyModel>
    implements $SubCountyModelCopyWith<$Res> {
  _$SubCountyModelCopyWithImpl(this._value, this._then);

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
    Object? countyId = freezed,
    Object? createdAt = freezed,
    Object? county = freezed,
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
      countyId: freezed == countyId
          ? _value.countyId
          : countyId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as County?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountyCopyWith<$Res>? get county {
    if (_value.county == null) {
      return null;
    }

    return $CountyCopyWith<$Res>(_value.county!, (value) {
      return _then(_value.copyWith(county: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubCountyModelImplCopyWith<$Res>
    implements $SubCountyModelCopyWith<$Res> {
  factory _$$SubCountyModelImplCopyWith(_$SubCountyModelImpl value,
          $Res Function(_$SubCountyModelImpl) then) =
      __$$SubCountyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? gprs,
      int? countyId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      County? county});

  @override
  $CountyCopyWith<$Res>? get county;
}

/// @nodoc
class __$$SubCountyModelImplCopyWithImpl<$Res>
    extends _$SubCountyModelCopyWithImpl<$Res, _$SubCountyModelImpl>
    implements _$$SubCountyModelImplCopyWith<$Res> {
  __$$SubCountyModelImplCopyWithImpl(
      _$SubCountyModelImpl _value, $Res Function(_$SubCountyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? gprs = freezed,
    Object? countyId = freezed,
    Object? createdAt = freezed,
    Object? county = freezed,
  }) {
    return _then(_$SubCountyModelImpl(
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
      countyId: freezed == countyId
          ? _value.countyId
          : countyId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as County?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCountyModelImpl implements _SubCountyModel {
  _$SubCountyModelImpl(
      {this.id,
      this.name,
      this.description,
      this.gprs,
      this.countyId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.county});

  factory _$SubCountyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCountyModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? gprs;
  @override
  final int? countyId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final County? county;

  @override
  String toString() {
    return 'SubCountyModel(id: $id, name: $name, description: $description, gprs: $gprs, countyId: $countyId, createdAt: $createdAt, county: $county)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCountyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gprs, gprs) || other.gprs == gprs) &&
            (identical(other.countyId, countyId) ||
                other.countyId == countyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.county, county) || other.county == county));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, gprs, countyId, createdAt, county);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCountyModelImplCopyWith<_$SubCountyModelImpl> get copyWith =>
      __$$SubCountyModelImplCopyWithImpl<_$SubCountyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCountyModelImplToJson(
      this,
    );
  }
}

abstract class _SubCountyModel implements SubCountyModel {
  factory _SubCountyModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? gprs,
      final int? countyId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final County? county}) = _$SubCountyModelImpl;

  factory _SubCountyModel.fromJson(Map<String, dynamic> json) =
      _$SubCountyModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get gprs;
  @override
  int? get countyId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  County? get county;
  @override
  @JsonKey(ignore: true)
  _$$SubCountyModelImplCopyWith<_$SubCountyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
