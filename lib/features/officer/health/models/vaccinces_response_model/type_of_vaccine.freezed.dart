// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_of_vaccine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypeOfVaccine _$TypeOfVaccineFromJson(Map<String, dynamic> json) {
  return _TypeOfVaccine.fromJson(json);
}

/// @nodoc
mixin _$TypeOfVaccine {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeOfVaccineCopyWith<TypeOfVaccine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeOfVaccineCopyWith<$Res> {
  factory $TypeOfVaccineCopyWith(
          TypeOfVaccine value, $Res Function(TypeOfVaccine) then) =
      _$TypeOfVaccineCopyWithImpl<$Res, TypeOfVaccine>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$TypeOfVaccineCopyWithImpl<$Res, $Val extends TypeOfVaccine>
    implements $TypeOfVaccineCopyWith<$Res> {
  _$TypeOfVaccineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeOfVaccineImplCopyWith<$Res>
    implements $TypeOfVaccineCopyWith<$Res> {
  factory _$$TypeOfVaccineImplCopyWith(
          _$TypeOfVaccineImpl value, $Res Function(_$TypeOfVaccineImpl) then) =
      __$$TypeOfVaccineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$TypeOfVaccineImplCopyWithImpl<$Res>
    extends _$TypeOfVaccineCopyWithImpl<$Res, _$TypeOfVaccineImpl>
    implements _$$TypeOfVaccineImplCopyWith<$Res> {
  __$$TypeOfVaccineImplCopyWithImpl(
      _$TypeOfVaccineImpl _value, $Res Function(_$TypeOfVaccineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$TypeOfVaccineImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$TypeOfVaccineImpl implements _TypeOfVaccine {
  _$TypeOfVaccineImpl(
      {this.id, this.name, @JsonKey(name: 'created_at') this.createdAt});

  factory _$TypeOfVaccineImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeOfVaccineImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TypeOfVaccine(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeOfVaccineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeOfVaccineImplCopyWith<_$TypeOfVaccineImpl> get copyWith =>
      __$$TypeOfVaccineImplCopyWithImpl<_$TypeOfVaccineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeOfVaccineImplToJson(
      this,
    );
  }
}

abstract class _TypeOfVaccine implements TypeOfVaccine {
  factory _TypeOfVaccine(
          {final int? id,
          final String? name,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$TypeOfVaccineImpl;

  factory _TypeOfVaccine.fromJson(Map<String, dynamic> json) =
      _$TypeOfVaccineImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TypeOfVaccineImplCopyWith<_$TypeOfVaccineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
