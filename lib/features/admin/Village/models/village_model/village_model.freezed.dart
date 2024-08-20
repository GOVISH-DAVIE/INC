// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'village_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VillageModel _$VillageModelFromJson(Map<String, dynamic> json) {
  return _VillageModel.fromJson(json);
}

/// @nodoc
mixin _$VillageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  int? get wardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Ward? get ward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VillageModelCopyWith<VillageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageModelCopyWith<$Res> {
  factory $VillageModelCopyWith(
          VillageModel value, $Res Function(VillageModel) then) =
      _$VillageModelCopyWithImpl<$Res, VillageModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic description,
      int? wardId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Ward? ward});

  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class _$VillageModelCopyWithImpl<$Res, $Val extends VillageModel>
    implements $VillageModelCopyWith<$Res> {
  _$VillageModelCopyWithImpl(this._value, this._then);

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
    Object? wardId = freezed,
    Object? createdAt = freezed,
    Object? ward = freezed,
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
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as Ward?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WardCopyWith<$Res>? get ward {
    if (_value.ward == null) {
      return null;
    }

    return $WardCopyWith<$Res>(_value.ward!, (value) {
      return _then(_value.copyWith(ward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VillageModelImplCopyWith<$Res>
    implements $VillageModelCopyWith<$Res> {
  factory _$$VillageModelImplCopyWith(
          _$VillageModelImpl value, $Res Function(_$VillageModelImpl) then) =
      __$$VillageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic description,
      int? wardId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Ward? ward});

  @override
  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class __$$VillageModelImplCopyWithImpl<$Res>
    extends _$VillageModelCopyWithImpl<$Res, _$VillageModelImpl>
    implements _$$VillageModelImplCopyWith<$Res> {
  __$$VillageModelImplCopyWithImpl(
      _$VillageModelImpl _value, $Res Function(_$VillageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? wardId = freezed,
    Object? createdAt = freezed,
    Object? ward = freezed,
  }) {
    return _then(_$VillageModelImpl(
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
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as Ward?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VillageModelImpl implements _VillageModel {
  _$VillageModelImpl(
      {this.id,
      this.name,
      this.description,
      this.wardId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.ward});

  factory _$VillageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VillageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final dynamic description;
  @override
  final int? wardId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final Ward? ward;

  @override
  String toString() {
    return 'VillageModel(id: $id, name: $name, description: $description, wardId: $wardId, createdAt: $createdAt, ward: $ward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VillageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.wardId, wardId) || other.wardId == wardId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ward, ward) || other.ward == ward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(description),
      wardId,
      createdAt,
      ward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VillageModelImplCopyWith<_$VillageModelImpl> get copyWith =>
      __$$VillageModelImplCopyWithImpl<_$VillageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VillageModelImplToJson(
      this,
    );
  }
}

abstract class _VillageModel implements VillageModel {
  factory _VillageModel(
      {final int? id,
      final String? name,
      final dynamic description,
      final int? wardId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final Ward? ward}) = _$VillageModelImpl;

  factory _VillageModel.fromJson(Map<String, dynamic> json) =
      _$VillageModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  dynamic get description;
  @override
  int? get wardId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  Ward? get ward;
  @override
  @JsonKey(ignore: true)
  _$$VillageModelImplCopyWith<_$VillageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
