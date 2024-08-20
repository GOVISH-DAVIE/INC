// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_county.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubCounty _$SubCountyFromJson(Map<String, dynamic> json) {
  return _SubCounty.fromJson(json);
}

/// @nodoc
mixin _$SubCounty {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get gprs => throw _privateConstructorUsedError;
  int? get countyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCountyCopyWith<SubCounty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCountyCopyWith<$Res> {
  factory $SubCountyCopyWith(SubCounty value, $Res Function(SubCounty) then) =
      _$SubCountyCopyWithImpl<$Res, SubCounty>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? gprs,
      int? countyId,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$SubCountyCopyWithImpl<$Res, $Val extends SubCounty>
    implements $SubCountyCopyWith<$Res> {
  _$SubCountyCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCountyImplCopyWith<$Res>
    implements $SubCountyCopyWith<$Res> {
  factory _$$SubCountyImplCopyWith(
          _$SubCountyImpl value, $Res Function(_$SubCountyImpl) then) =
      __$$SubCountyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? gprs,
      int? countyId,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$SubCountyImplCopyWithImpl<$Res>
    extends _$SubCountyCopyWithImpl<$Res, _$SubCountyImpl>
    implements _$$SubCountyImplCopyWith<$Res> {
  __$$SubCountyImplCopyWithImpl(
      _$SubCountyImpl _value, $Res Function(_$SubCountyImpl) _then)
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
  }) {
    return _then(_$SubCountyImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCountyImpl implements _SubCounty {
  _$SubCountyImpl(
      {this.id,
      this.name,
      this.description,
      this.gprs,
      this.countyId,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$SubCountyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCountyImplFromJson(json);

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
  String toString() {
    return 'SubCounty(id: $id, name: $name, description: $description, gprs: $gprs, countyId: $countyId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCountyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gprs, gprs) || other.gprs == gprs) &&
            (identical(other.countyId, countyId) ||
                other.countyId == countyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, gprs, countyId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCountyImplCopyWith<_$SubCountyImpl> get copyWith =>
      __$$SubCountyImplCopyWithImpl<_$SubCountyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCountyImplToJson(
      this,
    );
  }
}

abstract class _SubCounty implements SubCounty {
  factory _SubCounty(
          {final int? id,
          final String? name,
          final String? description,
          final String? gprs,
          final int? countyId,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$SubCountyImpl;

  factory _SubCounty.fromJson(Map<String, dynamic> json) =
      _$SubCountyImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$SubCountyImplCopyWith<_$SubCountyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
