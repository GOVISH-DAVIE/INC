// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_cartegories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchoolCartegories _$SchoolCartegoriesFromJson(Map<String, dynamic> json) {
  return _SchoolCartegories.fromJson(json);
}

/// @nodoc
mixin _$SchoolCartegories {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCartegoriesCopyWith<SchoolCartegories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCartegoriesCopyWith<$Res> {
  factory $SchoolCartegoriesCopyWith(
          SchoolCartegories value, $Res Function(SchoolCartegories) then) =
      _$SchoolCartegoriesCopyWithImpl<$Res, SchoolCartegories>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$SchoolCartegoriesCopyWithImpl<$Res, $Val extends SchoolCartegories>
    implements $SchoolCartegoriesCopyWith<$Res> {
  _$SchoolCartegoriesCopyWithImpl(this._value, this._then);

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
abstract class _$$SchoolCartegoriesImplCopyWith<$Res>
    implements $SchoolCartegoriesCopyWith<$Res> {
  factory _$$SchoolCartegoriesImplCopyWith(_$SchoolCartegoriesImpl value,
          $Res Function(_$SchoolCartegoriesImpl) then) =
      __$$SchoolCartegoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$SchoolCartegoriesImplCopyWithImpl<$Res>
    extends _$SchoolCartegoriesCopyWithImpl<$Res, _$SchoolCartegoriesImpl>
    implements _$$SchoolCartegoriesImplCopyWith<$Res> {
  __$$SchoolCartegoriesImplCopyWithImpl(_$SchoolCartegoriesImpl _value,
      $Res Function(_$SchoolCartegoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$SchoolCartegoriesImpl(
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
class _$SchoolCartegoriesImpl implements _SchoolCartegories {
  _$SchoolCartegoriesImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$SchoolCartegoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolCartegoriesImplFromJson(json);

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
    return 'SchoolCartegories(id: $id, name: $name, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolCartegoriesImpl &&
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
  _$$SchoolCartegoriesImplCopyWith<_$SchoolCartegoriesImpl> get copyWith =>
      __$$SchoolCartegoriesImplCopyWithImpl<_$SchoolCartegoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolCartegoriesImplToJson(
      this,
    );
  }
}

abstract class _SchoolCartegories implements SchoolCartegories {
  factory _SchoolCartegories(
          {final int? id,
          final String? name,
          final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$SchoolCartegoriesImpl;

  factory _SchoolCartegories.fromJson(Map<String, dynamic> json) =
      _$SchoolCartegoriesImpl.fromJson;

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
  _$$SchoolCartegoriesImplCopyWith<_$SchoolCartegoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
