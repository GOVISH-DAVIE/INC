// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relief_distribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReliefDistribution _$ReliefDistributionFromJson(Map<String, dynamic> json) {
  return _ReliefDistribution.fromJson(json);
}

/// @nodoc
mixin _$ReliefDistribution {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_relief')
  String? get typeOfRelief => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_distributed')
  String? get quantityDistributed => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_people_given')
  String? get numberOfPeopleGiven => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  String? get relief_date => throw _privateConstructorUsedError;
  Area? get area => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReliefDistributionCopyWith<ReliefDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReliefDistributionCopyWith<$Res> {
  factory $ReliefDistributionCopyWith(
          ReliefDistribution value, $Res Function(ReliefDistribution) then) =
      _$ReliefDistributionCopyWithImpl<$Res, ReliefDistribution>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'type_of_relief') String? typeOfRelief,
      @JsonKey(name: 'quantity_distributed') String? quantityDistributed,
      @JsonKey(name: 'number_of_people_given') String? numberOfPeopleGiven,
      int? villageId,
      String? relief_date,
      Area? area});

  $AreaCopyWith<$Res>? get area;
}

/// @nodoc
class _$ReliefDistributionCopyWithImpl<$Res, $Val extends ReliefDistribution>
    implements $ReliefDistributionCopyWith<$Res> {
  _$ReliefDistributionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? typeOfRelief = freezed,
    Object? quantityDistributed = freezed,
    Object? numberOfPeopleGiven = freezed,
    Object? villageId = freezed,
    Object? relief_date = freezed,
    Object? area = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeOfRelief: freezed == typeOfRelief
          ? _value.typeOfRelief
          : typeOfRelief // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityDistributed: freezed == quantityDistributed
          ? _value.quantityDistributed
          : quantityDistributed // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfPeopleGiven: freezed == numberOfPeopleGiven
          ? _value.numberOfPeopleGiven
          : numberOfPeopleGiven // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      relief_date: freezed == relief_date
          ? _value.relief_date
          : relief_date // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReliefDistributionImplCopyWith<$Res>
    implements $ReliefDistributionCopyWith<$Res> {
  factory _$$ReliefDistributionImplCopyWith(_$ReliefDistributionImpl value,
          $Res Function(_$ReliefDistributionImpl) then) =
      __$$ReliefDistributionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'type_of_relief') String? typeOfRelief,
      @JsonKey(name: 'quantity_distributed') String? quantityDistributed,
      @JsonKey(name: 'number_of_people_given') String? numberOfPeopleGiven,
      int? villageId,
      String? relief_date,
      Area? area});

  @override
  $AreaCopyWith<$Res>? get area;
}

/// @nodoc
class __$$ReliefDistributionImplCopyWithImpl<$Res>
    extends _$ReliefDistributionCopyWithImpl<$Res, _$ReliefDistributionImpl>
    implements _$$ReliefDistributionImplCopyWith<$Res> {
  __$$ReliefDistributionImplCopyWithImpl(_$ReliefDistributionImpl _value,
      $Res Function(_$ReliefDistributionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? typeOfRelief = freezed,
    Object? quantityDistributed = freezed,
    Object? numberOfPeopleGiven = freezed,
    Object? villageId = freezed,
    Object? relief_date = freezed,
    Object? area = freezed,
  }) {
    return _then(_$ReliefDistributionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeOfRelief: freezed == typeOfRelief
          ? _value.typeOfRelief
          : typeOfRelief // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityDistributed: freezed == quantityDistributed
          ? _value.quantityDistributed
          : quantityDistributed // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfPeopleGiven: freezed == numberOfPeopleGiven
          ? _value.numberOfPeopleGiven
          : numberOfPeopleGiven // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      relief_date: freezed == relief_date
          ? _value.relief_date
          : relief_date // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReliefDistributionImpl implements _ReliefDistribution {
  _$ReliefDistributionImpl(
      {this.id,
      @JsonKey(name: 'type_of_relief') this.typeOfRelief,
      @JsonKey(name: 'quantity_distributed') this.quantityDistributed,
      @JsonKey(name: 'number_of_people_given') this.numberOfPeopleGiven,
      this.villageId,
      this.relief_date,
      this.area});

  factory _$ReliefDistributionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReliefDistributionImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'type_of_relief')
  final String? typeOfRelief;
  @override
  @JsonKey(name: 'quantity_distributed')
  final String? quantityDistributed;
  @override
  @JsonKey(name: 'number_of_people_given')
  final String? numberOfPeopleGiven;
  @override
  final int? villageId;
  @override
  final String? relief_date;
  @override
  final Area? area;

  @override
  String toString() {
    return 'ReliefDistribution(id: $id, typeOfRelief: $typeOfRelief, quantityDistributed: $quantityDistributed, numberOfPeopleGiven: $numberOfPeopleGiven, villageId: $villageId, relief_date: $relief_date, area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReliefDistributionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeOfRelief, typeOfRelief) ||
                other.typeOfRelief == typeOfRelief) &&
            (identical(other.quantityDistributed, quantityDistributed) ||
                other.quantityDistributed == quantityDistributed) &&
            (identical(other.numberOfPeopleGiven, numberOfPeopleGiven) ||
                other.numberOfPeopleGiven == numberOfPeopleGiven) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.relief_date, relief_date) ||
                other.relief_date == relief_date) &&
            (identical(other.area, area) || other.area == area));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, typeOfRelief,
      quantityDistributed, numberOfPeopleGiven, villageId, relief_date, area);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReliefDistributionImplCopyWith<_$ReliefDistributionImpl> get copyWith =>
      __$$ReliefDistributionImplCopyWithImpl<_$ReliefDistributionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReliefDistributionImplToJson(
      this,
    );
  }
}

abstract class _ReliefDistribution implements ReliefDistribution {
  factory _ReliefDistribution(
      {final int? id,
      @JsonKey(name: 'type_of_relief') final String? typeOfRelief,
      @JsonKey(name: 'quantity_distributed') final String? quantityDistributed,
      @JsonKey(name: 'number_of_people_given')
      final String? numberOfPeopleGiven,
      final int? villageId,
      final String? relief_date,
      final Area? area}) = _$ReliefDistributionImpl;

  factory _ReliefDistribution.fromJson(Map<String, dynamic> json) =
      _$ReliefDistributionImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'type_of_relief')
  String? get typeOfRelief;
  @override
  @JsonKey(name: 'quantity_distributed')
  String? get quantityDistributed;
  @override
  @JsonKey(name: 'number_of_people_given')
  String? get numberOfPeopleGiven;
  @override
  int? get villageId;
  @override
  String? get relief_date;
  @override
  Area? get area;
  @override
  @JsonKey(ignore: true)
  _$$ReliefDistributionImplCopyWith<_$ReliefDistributionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
