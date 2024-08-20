// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_designation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherDesignation _$TeacherDesignationFromJson(Map<String, dynamic> json) {
  return _TeacherDesignation.fromJson(json);
}

/// @nodoc
mixin _$TeacherDesignation {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherDesignationCopyWith<TeacherDesignation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherDesignationCopyWith<$Res> {
  factory $TeacherDesignationCopyWith(
          TeacherDesignation value, $Res Function(TeacherDesignation) then) =
      _$TeacherDesignationCopyWithImpl<$Res, TeacherDesignation>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$TeacherDesignationCopyWithImpl<$Res, $Val extends TeacherDesignation>
    implements $TeacherDesignationCopyWith<$Res> {
  _$TeacherDesignationCopyWithImpl(this._value, this._then);

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
abstract class _$$TeacherDesignationImplCopyWith<$Res>
    implements $TeacherDesignationCopyWith<$Res> {
  factory _$$TeacherDesignationImplCopyWith(_$TeacherDesignationImpl value,
          $Res Function(_$TeacherDesignationImpl) then) =
      __$$TeacherDesignationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$TeacherDesignationImplCopyWithImpl<$Res>
    extends _$TeacherDesignationCopyWithImpl<$Res, _$TeacherDesignationImpl>
    implements _$$TeacherDesignationImplCopyWith<$Res> {
  __$$TeacherDesignationImplCopyWithImpl(_$TeacherDesignationImpl _value,
      $Res Function(_$TeacherDesignationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$TeacherDesignationImpl(
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
class _$TeacherDesignationImpl implements _TeacherDesignation {
  _$TeacherDesignationImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$TeacherDesignationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherDesignationImplFromJson(json);

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
    return 'TeacherDesignation(id: $id, name: $name, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherDesignationImpl &&
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
  _$$TeacherDesignationImplCopyWith<_$TeacherDesignationImpl> get copyWith =>
      __$$TeacherDesignationImplCopyWithImpl<_$TeacherDesignationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherDesignationImplToJson(
      this,
    );
  }
}

abstract class _TeacherDesignation implements TeacherDesignation {
  factory _TeacherDesignation(
          {final int? id,
          final String? name,
          final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$TeacherDesignationImpl;

  factory _TeacherDesignation.fromJson(Map<String, dynamic> json) =
      _$TeacherDesignationImpl.fromJson;

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
  _$$TeacherDesignationImplCopyWith<_$TeacherDesignationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
