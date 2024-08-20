// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Gender _$GenderFromJson(Map<String, dynamic> json) {
  return _Gender.fromJson(json);
}

/// @nodoc
mixin _$Gender {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderCopyWith<Gender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res, Gender>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$GenderCopyWithImpl<$Res, $Val extends Gender>
    implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

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
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderImplCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory _$$GenderImplCopyWith(
          _$GenderImpl value, $Res Function(_$GenderImpl) then) =
      __$$GenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$GenderImplCopyWithImpl<$Res>
    extends _$GenderCopyWithImpl<$Res, _$GenderImpl>
    implements _$$GenderImplCopyWith<$Res> {
  __$$GenderImplCopyWithImpl(
      _$GenderImpl _value, $Res Function(_$GenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$GenderImpl(
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
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenderImpl implements _Gender {
  _$GenderImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$GenderImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenderImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final dynamic description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Gender(id: $id, name: $name, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(description), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      __$$GenderImplCopyWithImpl<_$GenderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderImplToJson(
      this,
    );
  }
}

abstract class _Gender implements Gender {
  factory _Gender(
      {final int? id,
      final String? name,
      final dynamic description,
      @JsonKey(name: 'created_at') final DateTime? createdAt}) = _$GenderImpl;

  factory _Gender.fromJson(Map<String, dynamic> json) = _$GenderImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  dynamic get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
