// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirthModel _$BirthModelFromJson(Map<String, dynamic> json) {
  return _BirthModel.fromJson(json);
}

/// @nodoc
mixin _$BirthModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  Village? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthModelCopyWith<BirthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthModelCopyWith<$Res> {
  factory $BirthModelCopyWith(
          BirthModel value, $Res Function(BirthModel) then) =
      _$BirthModelCopyWithImpl<$Res, BirthModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? parent,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? villageId,
      Village? village});

  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class _$BirthModelCopyWithImpl<$Res, $Val extends BirthModel>
    implements $BirthModelCopyWith<$Res> {
  _$BirthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parent = freezed,
    Object? createdAt = freezed,
    Object? villageId = freezed,
    Object? village = freezed,
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
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VillageCopyWith<$Res>? get village {
    if (_value.village == null) {
      return null;
    }

    return $VillageCopyWith<$Res>(_value.village!, (value) {
      return _then(_value.copyWith(village: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BirthModelImplCopyWith<$Res>
    implements $BirthModelCopyWith<$Res> {
  factory _$$BirthModelImplCopyWith(
          _$BirthModelImpl value, $Res Function(_$BirthModelImpl) then) =
      __$$BirthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? parent,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? villageId,
      Village? village});

  @override
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class __$$BirthModelImplCopyWithImpl<$Res>
    extends _$BirthModelCopyWithImpl<$Res, _$BirthModelImpl>
    implements _$$BirthModelImplCopyWith<$Res> {
  __$$BirthModelImplCopyWithImpl(
      _$BirthModelImpl _value, $Res Function(_$BirthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parent = freezed,
    Object? createdAt = freezed,
    Object? villageId = freezed,
    Object? village = freezed,
  }) {
    return _then(_$BirthModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirthModelImpl implements _BirthModel {
  _$BirthModelImpl(
      {this.id,
      this.name,
      this.parent,
      @JsonKey(name: 'created_at') this.createdAt,
      this.villageId,
      this.village});

  factory _$BirthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirthModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? parent;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? villageId;
  @override
  final Village? village;

  @override
  String toString() {
    return 'BirthModel(id: $id, name: $name, parent: $parent, createdAt: $createdAt, villageId: $villageId, village: $village)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, parent, createdAt, villageId, village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthModelImplCopyWith<_$BirthModelImpl> get copyWith =>
      __$$BirthModelImplCopyWithImpl<_$BirthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirthModelImplToJson(
      this,
    );
  }
}

abstract class _BirthModel implements BirthModel {
  factory _BirthModel(
      {final int? id,
      final String? name,
      final String? parent,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? villageId,
      final Village? village}) = _$BirthModelImpl;

  factory _BirthModel.fromJson(Map<String, dynamic> json) =
      _$BirthModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get parent;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get villageId;
  @override
  Village? get village;
  @override
  @JsonKey(ignore: true)
  _$$BirthModelImplCopyWith<_$BirthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
