// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disaster_o_ccurrence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisasterOCcurrence _$DisasterOCcurrenceFromJson(Map<String, dynamic> json) {
  return _DisasterOCcurrence.fromJson(json);
}

/// @nodoc
mixin _$DisasterOCcurrence {
  int? get id => throw _privateConstructorUsedError;
  int? get disasterId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get homesteads => throw _privateConstructorUsedError;
  int? get deaths => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisasterOCcurrenceCopyWith<DisasterOCcurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisasterOCcurrenceCopyWith<$Res> {
  factory $DisasterOCcurrenceCopyWith(
          DisasterOCcurrence value, $Res Function(DisasterOCcurrence) then) =
      _$DisasterOCcurrenceCopyWithImpl<$Res, DisasterOCcurrence>;
  @useResult
  $Res call(
      {int? id,
      int? disasterId,
      String? description,
      int? homesteads,
      int? deaths,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$DisasterOCcurrenceCopyWithImpl<$Res, $Val extends DisasterOCcurrence>
    implements $DisasterOCcurrenceCopyWith<$Res> {
  _$DisasterOCcurrenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? disasterId = freezed,
    Object? description = freezed,
    Object? homesteads = freezed,
    Object? deaths = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      disasterId: freezed == disasterId
          ? _value.disasterId
          : disasterId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      homesteads: freezed == homesteads
          ? _value.homesteads
          : homesteads // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: freezed == deaths
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisasterOCcurrenceImplCopyWith<$Res>
    implements $DisasterOCcurrenceCopyWith<$Res> {
  factory _$$DisasterOCcurrenceImplCopyWith(_$DisasterOCcurrenceImpl value,
          $Res Function(_$DisasterOCcurrenceImpl) then) =
      __$$DisasterOCcurrenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? disasterId,
      String? description,
      int? homesteads,
      int? deaths,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$DisasterOCcurrenceImplCopyWithImpl<$Res>
    extends _$DisasterOCcurrenceCopyWithImpl<$Res, _$DisasterOCcurrenceImpl>
    implements _$$DisasterOCcurrenceImplCopyWith<$Res> {
  __$$DisasterOCcurrenceImplCopyWithImpl(_$DisasterOCcurrenceImpl _value,
      $Res Function(_$DisasterOCcurrenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? disasterId = freezed,
    Object? description = freezed,
    Object? homesteads = freezed,
    Object? deaths = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$DisasterOCcurrenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      disasterId: freezed == disasterId
          ? _value.disasterId
          : disasterId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      homesteads: freezed == homesteads
          ? _value.homesteads
          : homesteads // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: freezed == deaths
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisasterOCcurrenceImpl implements _DisasterOCcurrence {
  _$DisasterOCcurrenceImpl(
      {this.id,
      this.disasterId,
      this.description,
      this.homesteads,
      this.deaths,
      this.villageId,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$DisasterOCcurrenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisasterOCcurrenceImplFromJson(json);

  @override
  final int? id;
  @override
  final int? disasterId;
  @override
  final String? description;
  @override
  final int? homesteads;
  @override
  final int? deaths;
  @override
  final int? villageId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DisasterOCcurrence(id: $id, disasterId: $disasterId, description: $description, homesteads: $homesteads, deaths: $deaths, villageId: $villageId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisasterOCcurrenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.disasterId, disasterId) ||
                other.disasterId == disasterId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.homesteads, homesteads) ||
                other.homesteads == homesteads) &&
            (identical(other.deaths, deaths) || other.deaths == deaths) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, disasterId, description,
      homesteads, deaths, villageId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisasterOCcurrenceImplCopyWith<_$DisasterOCcurrenceImpl> get copyWith =>
      __$$DisasterOCcurrenceImplCopyWithImpl<_$DisasterOCcurrenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisasterOCcurrenceImplToJson(
      this,
    );
  }
}

abstract class _DisasterOCcurrence implements DisasterOCcurrence {
  factory _DisasterOCcurrence(
          {final int? id,
          final int? disasterId,
          final String? description,
          final int? homesteads,
          final int? deaths,
          final int? villageId,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$DisasterOCcurrenceImpl;

  factory _DisasterOCcurrence.fromJson(Map<String, dynamic> json) =
      _$DisasterOCcurrenceImpl.fromJson;

  @override
  int? get id;
  @override
  int? get disasterId;
  @override
  String? get description;
  @override
  int? get homesteads;
  @override
  int? get deaths;
  @override
  int? get villageId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$DisasterOCcurrenceImplCopyWith<_$DisasterOCcurrenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
