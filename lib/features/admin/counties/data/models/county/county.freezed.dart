// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'county.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

County _$CountyFromJson(Map<String, dynamic> json) {
  return _County.fromJson(json);
}

/// @nodoc
mixin _$County {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountyCopyWith<County> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountyCopyWith<$Res> {
  factory $CountyCopyWith(County value, $Res Function(County) then) =
      _$CountyCopyWithImpl<$Res, County>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$CountyCopyWithImpl<$Res, $Val extends County>
    implements $CountyCopyWith<$Res> {
  _$CountyCopyWithImpl(this._value, this._then);

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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountyImplCopyWith<$Res> implements $CountyCopyWith<$Res> {
  factory _$$CountyImplCopyWith(
          _$CountyImpl value, $Res Function(_$CountyImpl) then) =
      __$$CountyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$CountyImplCopyWithImpl<$Res>
    extends _$CountyCopyWithImpl<$Res, _$CountyImpl>
    implements _$$CountyImplCopyWith<$Res> {
  __$$CountyImplCopyWithImpl(
      _$CountyImpl _value, $Res Function(_$CountyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$CountyImpl(
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountyImpl implements _County {
  _$CountyImpl(
      {this.id,
      this.name,
      this.code,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$CountyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountyImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'County(id: $id, name: $name, code: $code, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountyImplCopyWith<_$CountyImpl> get copyWith =>
      __$$CountyImplCopyWithImpl<_$CountyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountyImplToJson(
      this,
    );
  }
}

abstract class _County implements County {
  factory _County(
      {final int? id,
      final String? name,
      final String? code,
      @JsonKey(name: 'created_at') final DateTime? createdAt}) = _$CountyImpl;

  factory _County.fromJson(Map<String, dynamic> json) = _$CountyImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CountyImplCopyWith<_$CountyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
