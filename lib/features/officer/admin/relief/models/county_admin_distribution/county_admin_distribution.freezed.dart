// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'county_admin_distribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountyAdminDistribution _$CountyAdminDistributionFromJson(
    Map<String, dynamic> json) {
  return _CountyAdminDistribution.fromJson(json);
}

/// @nodoc
mixin _$CountyAdminDistribution {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'relief_type')
  String? get reliefType => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get wardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime => throw _privateConstructorUsedError;
  Ward? get ward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountyAdminDistributionCopyWith<CountyAdminDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountyAdminDistributionCopyWith<$Res> {
  factory $CountyAdminDistributionCopyWith(CountyAdminDistribution value,
          $Res Function(CountyAdminDistribution) then) =
      _$CountyAdminDistributionCopyWithImpl<$Res, CountyAdminDistribution>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'relief_type') String? reliefType,
      int? quantity,
      String? type,
      int? wardId,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
      Ward? ward});

  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class _$CountyAdminDistributionCopyWithImpl<$Res,
        $Val extends CountyAdminDistribution>
    implements $CountyAdminDistributionCopyWith<$Res> {
  _$CountyAdminDistributionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reliefType = freezed,
    Object? quantity = freezed,
    Object? type = freezed,
    Object? wardId = freezed,
    Object? dateAndTime = freezed,
    Object? ward = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reliefType: freezed == reliefType
          ? _value.reliefType
          : reliefType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CountyAdminDistributionImplCopyWith<$Res>
    implements $CountyAdminDistributionCopyWith<$Res> {
  factory _$$CountyAdminDistributionImplCopyWith(
          _$CountyAdminDistributionImpl value,
          $Res Function(_$CountyAdminDistributionImpl) then) =
      __$$CountyAdminDistributionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'relief_type') String? reliefType,
      int? quantity,
      String? type,
      int? wardId,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
      Ward? ward});

  @override
  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class __$$CountyAdminDistributionImplCopyWithImpl<$Res>
    extends _$CountyAdminDistributionCopyWithImpl<$Res,
        _$CountyAdminDistributionImpl>
    implements _$$CountyAdminDistributionImplCopyWith<$Res> {
  __$$CountyAdminDistributionImplCopyWithImpl(
      _$CountyAdminDistributionImpl _value,
      $Res Function(_$CountyAdminDistributionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reliefType = freezed,
    Object? quantity = freezed,
    Object? type = freezed,
    Object? wardId = freezed,
    Object? dateAndTime = freezed,
    Object? ward = freezed,
  }) {
    return _then(_$CountyAdminDistributionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reliefType: freezed == reliefType
          ? _value.reliefType
          : reliefType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
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
class _$CountyAdminDistributionImpl implements _CountyAdminDistribution {
  _$CountyAdminDistributionImpl(
      {this.id,
      @JsonKey(name: 'relief_type') this.reliefType,
      this.quantity,
      this.type,
      this.wardId,
      @JsonKey(name: 'date_and_time') this.dateAndTime,
      this.ward});

  factory _$CountyAdminDistributionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountyAdminDistributionImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'relief_type')
  final String? reliefType;
  @override
  final int? quantity;
  @override
  final String? type;
  @override
  final int? wardId;
  @override
  @JsonKey(name: 'date_and_time')
  final DateTime? dateAndTime;
  @override
  final Ward? ward;

  @override
  String toString() {
    return 'CountyAdminDistribution(id: $id, reliefType: $reliefType, quantity: $quantity, type: $type, wardId: $wardId, dateAndTime: $dateAndTime, ward: $ward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountyAdminDistributionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reliefType, reliefType) ||
                other.reliefType == reliefType) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.wardId, wardId) || other.wardId == wardId) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime) &&
            (identical(other.ward, ward) || other.ward == ward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, reliefType, quantity, type, wardId, dateAndTime, ward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountyAdminDistributionImplCopyWith<_$CountyAdminDistributionImpl>
      get copyWith => __$$CountyAdminDistributionImplCopyWithImpl<
          _$CountyAdminDistributionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountyAdminDistributionImplToJson(
      this,
    );
  }
}

abstract class _CountyAdminDistribution implements CountyAdminDistribution {
  factory _CountyAdminDistribution(
      {final int? id,
      @JsonKey(name: 'relief_type') final String? reliefType,
      final int? quantity,
      final String? type,
      final int? wardId,
      @JsonKey(name: 'date_and_time') final DateTime? dateAndTime,
      final Ward? ward}) = _$CountyAdminDistributionImpl;

  factory _CountyAdminDistribution.fromJson(Map<String, dynamic> json) =
      _$CountyAdminDistributionImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'relief_type')
  String? get reliefType;
  @override
  int? get quantity;
  @override
  String? get type;
  @override
  int? get wardId;
  @override
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime;
  @override
  Ward? get ward;
  @override
  @JsonKey(ignore: true)
  _$$CountyAdminDistributionImplCopyWith<_$CountyAdminDistributionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
