// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disaster_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisasterModel _$DisasterModelFromJson(Map<String, dynamic> json) {
  return _DisasterModel.fromJson(json);
}

/// @nodoc
mixin _$DisasterModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'DisasterOCcurrence')
  List<DisasterOCcurrence>? get disasterOCcurrence =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisasterModelCopyWith<DisasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisasterModelCopyWith<$Res> {
  factory $DisasterModelCopyWith(
          DisasterModel value, $Res Function(DisasterModel) then) =
      _$DisasterModelCopyWithImpl<$Res, DisasterModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'DisasterOCcurrence')
      List<DisasterOCcurrence>? disasterOCcurrence});
}

/// @nodoc
class _$DisasterModelCopyWithImpl<$Res, $Val extends DisasterModel>
    implements $DisasterModelCopyWith<$Res> {
  _$DisasterModelCopyWithImpl(this._value, this._then);

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
    Object? disasterOCcurrence = freezed,
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
      disasterOCcurrence: freezed == disasterOCcurrence
          ? _value.disasterOCcurrence
          : disasterOCcurrence // ignore: cast_nullable_to_non_nullable
              as List<DisasterOCcurrence>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisasterModelImplCopyWith<$Res>
    implements $DisasterModelCopyWith<$Res> {
  factory _$$DisasterModelImplCopyWith(
          _$DisasterModelImpl value, $Res Function(_$DisasterModelImpl) then) =
      __$$DisasterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'DisasterOCcurrence')
      List<DisasterOCcurrence>? disasterOCcurrence});
}

/// @nodoc
class __$$DisasterModelImplCopyWithImpl<$Res>
    extends _$DisasterModelCopyWithImpl<$Res, _$DisasterModelImpl>
    implements _$$DisasterModelImplCopyWith<$Res> {
  __$$DisasterModelImplCopyWithImpl(
      _$DisasterModelImpl _value, $Res Function(_$DisasterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? disasterOCcurrence = freezed,
  }) {
    return _then(_$DisasterModelImpl(
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
      disasterOCcurrence: freezed == disasterOCcurrence
          ? _value._disasterOCcurrence
          : disasterOCcurrence // ignore: cast_nullable_to_non_nullable
              as List<DisasterOCcurrence>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisasterModelImpl implements _DisasterModel {
  _$DisasterModelImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'DisasterOCcurrence')
      final List<DisasterOCcurrence>? disasterOCcurrence})
      : _disasterOCcurrence = disasterOCcurrence;

  factory _$DisasterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisasterModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  final List<DisasterOCcurrence>? _disasterOCcurrence;
  @override
  @JsonKey(name: 'DisasterOCcurrence')
  List<DisasterOCcurrence>? get disasterOCcurrence {
    final value = _disasterOCcurrence;
    if (value == null) return null;
    if (_disasterOCcurrence is EqualUnmodifiableListView)
      return _disasterOCcurrence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DisasterModel(id: $id, name: $name, description: $description, createdAt: $createdAt, disasterOCcurrence: $disasterOCcurrence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisasterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._disasterOCcurrence, _disasterOCcurrence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, createdAt,
      const DeepCollectionEquality().hash(_disasterOCcurrence));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisasterModelImplCopyWith<_$DisasterModelImpl> get copyWith =>
      __$$DisasterModelImplCopyWithImpl<_$DisasterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisasterModelImplToJson(
      this,
    );
  }
}

abstract class _DisasterModel implements DisasterModel {
  factory _DisasterModel(
          {final int? id,
          final String? name,
          final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'DisasterOCcurrence')
          final List<DisasterOCcurrence>? disasterOCcurrence}) =
      _$DisasterModelImpl;

  factory _DisasterModel.fromJson(Map<String, dynamic> json) =
      _$DisasterModelImpl.fromJson;

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
  @JsonKey(name: 'DisasterOCcurrence')
  List<DisasterOCcurrence>? get disasterOCcurrence;
  @override
  @JsonKey(ignore: true)
  _$$DisasterModelImplCopyWith<_$DisasterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
