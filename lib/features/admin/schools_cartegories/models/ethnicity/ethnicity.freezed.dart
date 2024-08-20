// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ethnicity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ethnicity _$EthnicityFromJson(Map<String, dynamic> json) {
  return _Ethnicity.fromJson(json);
}

/// @nodoc
mixin _$Ethnicity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EthnicityCopyWith<Ethnicity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EthnicityCopyWith<$Res> {
  factory $EthnicityCopyWith(Ethnicity value, $Res Function(Ethnicity) then) =
      _$EthnicityCopyWithImpl<$Res, Ethnicity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$EthnicityCopyWithImpl<$Res, $Val extends Ethnicity>
    implements $EthnicityCopyWith<$Res> {
  _$EthnicityCopyWithImpl(this._value, this._then);

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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EthnicityImplCopyWith<$Res>
    implements $EthnicityCopyWith<$Res> {
  factory _$$EthnicityImplCopyWith(
          _$EthnicityImpl value, $Res Function(_$EthnicityImpl) then) =
      __$$EthnicityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$EthnicityImplCopyWithImpl<$Res>
    extends _$EthnicityCopyWithImpl<$Res, _$EthnicityImpl>
    implements _$$EthnicityImplCopyWith<$Res> {
  __$$EthnicityImplCopyWithImpl(
      _$EthnicityImpl _value, $Res Function(_$EthnicityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$EthnicityImpl(
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EthnicityImpl implements _Ethnicity {
  _$EthnicityImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$EthnicityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EthnicityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Ethnicity(id: $id, name: $name, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EthnicityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EthnicityImplCopyWith<_$EthnicityImpl> get copyWith =>
      __$$EthnicityImplCopyWithImpl<_$EthnicityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EthnicityImplToJson(
      this,
    );
  }
}

abstract class _Ethnicity implements Ethnicity {
  factory _Ethnicity(
          {final int? id,
          final String? name,
          final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$EthnicityImpl;

  factory _Ethnicity.fromJson(Map<String, dynamic> json) =
      _$EthnicityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$EthnicityImplCopyWith<_$EthnicityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
