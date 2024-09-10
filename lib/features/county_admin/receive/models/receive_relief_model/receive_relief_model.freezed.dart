// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receive_relief_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiveReliefModel _$ReceiveReliefModelFromJson(Map<String, dynamic> json) {
  return _ReceiveReliefModel.fromJson(json);
}

/// @nodoc
mixin _$ReceiveReliefModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'relief_type')
  String? get reliefType => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiveReliefModelCopyWith<ReceiveReliefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveReliefModelCopyWith<$Res> {
  factory $ReceiveReliefModelCopyWith(
          ReceiveReliefModel value, $Res Function(ReceiveReliefModel) then) =
      _$ReceiveReliefModelCopyWithImpl<$Res, ReceiveReliefModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'relief_type') String? reliefType,
      int? quantity,
      String? type,
      String? source,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime});
}

/// @nodoc
class _$ReceiveReliefModelCopyWithImpl<$Res, $Val extends ReceiveReliefModel>
    implements $ReceiveReliefModelCopyWith<$Res> {
  _$ReceiveReliefModelCopyWithImpl(this._value, this._then);

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
    Object? source = freezed,
    Object? dateAndTime = freezed,
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiveReliefModelImplCopyWith<$Res>
    implements $ReceiveReliefModelCopyWith<$Res> {
  factory _$$ReceiveReliefModelImplCopyWith(_$ReceiveReliefModelImpl value,
          $Res Function(_$ReceiveReliefModelImpl) then) =
      __$$ReceiveReliefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'relief_type') String? reliefType,
      int? quantity,
      String? type,
      String? source,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime});
}

/// @nodoc
class __$$ReceiveReliefModelImplCopyWithImpl<$Res>
    extends _$ReceiveReliefModelCopyWithImpl<$Res, _$ReceiveReliefModelImpl>
    implements _$$ReceiveReliefModelImplCopyWith<$Res> {
  __$$ReceiveReliefModelImplCopyWithImpl(_$ReceiveReliefModelImpl _value,
      $Res Function(_$ReceiveReliefModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reliefType = freezed,
    Object? quantity = freezed,
    Object? type = freezed,
    Object? source = freezed,
    Object? dateAndTime = freezed,
  }) {
    return _then(_$ReceiveReliefModelImpl(
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiveReliefModelImpl implements _ReceiveReliefModel {
  _$ReceiveReliefModelImpl(
      {this.id,
      @JsonKey(name: 'relief_type') this.reliefType,
      this.quantity,
      this.type,
      this.source,
      @JsonKey(name: 'date_and_time') this.dateAndTime});

  factory _$ReceiveReliefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiveReliefModelImplFromJson(json);

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
  final String? source;
  @override
  @JsonKey(name: 'date_and_time')
  final DateTime? dateAndTime;

  @override
  String toString() {
    return 'ReceiveReliefModel(id: $id, reliefType: $reliefType, quantity: $quantity, type: $type, source: $source, dateAndTime: $dateAndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveReliefModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reliefType, reliefType) ||
                other.reliefType == reliefType) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, reliefType, quantity, type, source, dateAndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveReliefModelImplCopyWith<_$ReceiveReliefModelImpl> get copyWith =>
      __$$ReceiveReliefModelImplCopyWithImpl<_$ReceiveReliefModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiveReliefModelImplToJson(
      this,
    );
  }
}

abstract class _ReceiveReliefModel implements ReceiveReliefModel {
  factory _ReceiveReliefModel(
          {final int? id,
          @JsonKey(name: 'relief_type') final String? reliefType,
          final int? quantity,
          final String? type,
          final String? source,
          @JsonKey(name: 'date_and_time') final DateTime? dateAndTime}) =
      _$ReceiveReliefModelImpl;

  factory _ReceiveReliefModel.fromJson(Map<String, dynamic> json) =
      _$ReceiveReliefModelImpl.fromJson;

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
  String? get source;
  @override
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime;
  @override
  @JsonKey(ignore: true)
  _$$ReceiveReliefModelImplCopyWith<_$ReceiveReliefModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
