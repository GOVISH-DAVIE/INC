// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distribution_recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistributionRecipient _$DistributionRecipientFromJson(
    Map<String, dynamic> json) {
  return _DistributionRecipient.fromJson(json);
}

/// @nodoc
mixin _$DistributionRecipient {
  int? get id => throw _privateConstructorUsedError;
  Map<String, dynamic>? get recipients => throw _privateConstructorUsedError;
  @JsonKey(name: 'relief_distributionId')
  int? get reliefDistributionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistributionRecipientCopyWith<DistributionRecipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributionRecipientCopyWith<$Res> {
  factory $DistributionRecipientCopyWith(DistributionRecipient value,
          $Res Function(DistributionRecipient) then) =
      _$DistributionRecipientCopyWithImpl<$Res, DistributionRecipient>;
  @useResult
  $Res call(
      {int? id,
      Map<String, dynamic>? recipients,
      @JsonKey(name: 'relief_distributionId') int? reliefDistributionId,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime});
}

/// @nodoc
class _$DistributionRecipientCopyWithImpl<$Res,
        $Val extends DistributionRecipient>
    implements $DistributionRecipientCopyWith<$Res> {
  _$DistributionRecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipients = freezed,
    Object? reliefDistributionId = freezed,
    Object? dateAndTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recipients: freezed == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reliefDistributionId: freezed == reliefDistributionId
          ? _value.reliefDistributionId
          : reliefDistributionId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistributionRecipientImplCopyWith<$Res>
    implements $DistributionRecipientCopyWith<$Res> {
  factory _$$DistributionRecipientImplCopyWith(
          _$DistributionRecipientImpl value,
          $Res Function(_$DistributionRecipientImpl) then) =
      __$$DistributionRecipientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Map<String, dynamic>? recipients,
      @JsonKey(name: 'relief_distributionId') int? reliefDistributionId,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime});
}

/// @nodoc
class __$$DistributionRecipientImplCopyWithImpl<$Res>
    extends _$DistributionRecipientCopyWithImpl<$Res,
        _$DistributionRecipientImpl>
    implements _$$DistributionRecipientImplCopyWith<$Res> {
  __$$DistributionRecipientImplCopyWithImpl(_$DistributionRecipientImpl _value,
      $Res Function(_$DistributionRecipientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipients = freezed,
    Object? reliefDistributionId = freezed,
    Object? dateAndTime = freezed,
  }) {
    return _then(_$DistributionRecipientImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recipients: freezed == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reliefDistributionId: freezed == reliefDistributionId
          ? _value.reliefDistributionId
          : reliefDistributionId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistributionRecipientImpl implements _DistributionRecipient {
  _$DistributionRecipientImpl(
      {this.id,
      final Map<String, dynamic>? recipients,
      @JsonKey(name: 'relief_distributionId') this.reliefDistributionId,
      @JsonKey(name: 'date_and_time') this.dateAndTime})
      : _recipients = recipients;

  factory _$DistributionRecipientImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistributionRecipientImplFromJson(json);

  @override
  final int? id;
  final Map<String, dynamic>? _recipients;
  @override
  Map<String, dynamic>? get recipients {
    final value = _recipients;
    if (value == null) return null;
    if (_recipients is EqualUnmodifiableMapView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'relief_distributionId')
  final int? reliefDistributionId;
  @override
  @JsonKey(name: 'date_and_time')
  final DateTime? dateAndTime;

  @override
  String toString() {
    return 'DistributionRecipient(id: $id, recipients: $recipients, reliefDistributionId: $reliefDistributionId, dateAndTime: $dateAndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistributionRecipientImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients) &&
            (identical(other.reliefDistributionId, reliefDistributionId) ||
                other.reliefDistributionId == reliefDistributionId) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_recipients),
      reliefDistributionId,
      dateAndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistributionRecipientImplCopyWith<_$DistributionRecipientImpl>
      get copyWith => __$$DistributionRecipientImplCopyWithImpl<
          _$DistributionRecipientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistributionRecipientImplToJson(
      this,
    );
  }
}

abstract class _DistributionRecipient implements DistributionRecipient {
  factory _DistributionRecipient(
      {final int? id,
      final Map<String, dynamic>? recipients,
      @JsonKey(name: 'relief_distributionId') final int? reliefDistributionId,
      @JsonKey(name: 'date_and_time')
      final DateTime? dateAndTime}) = _$DistributionRecipientImpl;

  factory _DistributionRecipient.fromJson(Map<String, dynamic> json) =
      _$DistributionRecipientImpl.fromJson;

  @override
  int? get id;
  @override
  Map<String, dynamic>? get recipients;
  @override
  @JsonKey(name: 'relief_distributionId')
  int? get reliefDistributionId;
  @override
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime;
  @override
  @JsonKey(ignore: true)
  _$$DistributionRecipientImplCopyWith<_$DistributionRecipientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
