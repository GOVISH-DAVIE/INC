// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pregnat_moms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PregnatMomsModel _$PregnatMomsModelFromJson(Map<String, dynamic> json) {
  return _PregnatMomsModel.fromJson(json);
}

/// @nodoc
mixin _$PregnatMomsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'kids_to_bore')
  int? get kidsToBore => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Village? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PregnatMomsModelCopyWith<PregnatMomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnatMomsModelCopyWith<$Res> {
  factory $PregnatMomsModelCopyWith(
          PregnatMomsModel value, $Res Function(PregnatMomsModel) then) =
      _$PregnatMomsModelCopyWithImpl<$Res, PregnatMomsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'kids_to_bore') int? kidsToBore,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Village? village});

  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class _$PregnatMomsModelCopyWithImpl<$Res, $Val extends PregnatMomsModel>
    implements $PregnatMomsModelCopyWith<$Res> {
  _$PregnatMomsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? kidsToBore = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
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
      kidsToBore: freezed == kidsToBore
          ? _value.kidsToBore
          : kidsToBore // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$PregnatMomsModelImplCopyWith<$Res>
    implements $PregnatMomsModelCopyWith<$Res> {
  factory _$$PregnatMomsModelImplCopyWith(_$PregnatMomsModelImpl value,
          $Res Function(_$PregnatMomsModelImpl) then) =
      __$$PregnatMomsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'kids_to_bore') int? kidsToBore,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Village? village});

  @override
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class __$$PregnatMomsModelImplCopyWithImpl<$Res>
    extends _$PregnatMomsModelCopyWithImpl<$Res, _$PregnatMomsModelImpl>
    implements _$$PregnatMomsModelImplCopyWith<$Res> {
  __$$PregnatMomsModelImplCopyWithImpl(_$PregnatMomsModelImpl _value,
      $Res Function(_$PregnatMomsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? kidsToBore = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
    Object? village = freezed,
  }) {
    return _then(_$PregnatMomsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      kidsToBore: freezed == kidsToBore
          ? _value.kidsToBore
          : kidsToBore // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PregnatMomsModelImpl implements _PregnatMomsModel {
  _$PregnatMomsModelImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'kids_to_bore') this.kidsToBore,
      this.villageId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.village});

  factory _$PregnatMomsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PregnatMomsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'kids_to_bore')
  final int? kidsToBore;
  @override
  final int? villageId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final Village? village;

  @override
  String toString() {
    return 'PregnatMomsModel(id: $id, name: $name, kidsToBore: $kidsToBore, villageId: $villageId, createdAt: $createdAt, village: $village)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PregnatMomsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kidsToBore, kidsToBore) ||
                other.kidsToBore == kidsToBore) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, kidsToBore, villageId, createdAt, village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PregnatMomsModelImplCopyWith<_$PregnatMomsModelImpl> get copyWith =>
      __$$PregnatMomsModelImplCopyWithImpl<_$PregnatMomsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PregnatMomsModelImplToJson(
      this,
    );
  }
}

abstract class _PregnatMomsModel implements PregnatMomsModel {
  factory _PregnatMomsModel(
      {final int? id,
      final String? name,
      @JsonKey(name: 'kids_to_bore') final int? kidsToBore,
      final int? villageId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final Village? village}) = _$PregnatMomsModelImpl;

  factory _PregnatMomsModel.fromJson(Map<String, dynamic> json) =
      _$PregnatMomsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'kids_to_bore')
  int? get kidsToBore;
  @override
  int? get villageId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  Village? get village;
  @override
  @JsonKey(ignore: true)
  _$$PregnatMomsModelImplCopyWith<_$PregnatMomsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
