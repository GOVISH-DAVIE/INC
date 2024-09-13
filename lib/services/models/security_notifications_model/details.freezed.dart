// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  String? get reportsId => throw _privateConstructorUsedError;
  String? get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_and_time')
  String? get dateAndTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'what_happened')
  String? get whatHappened => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call(
      {String? reportsId,
      String? villageId,
      @JsonKey(name: 'date_and_time') String? dateAndTime,
      @JsonKey(name: 'what_happened') String? whatHappened});
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportsId = freezed,
    Object? villageId = freezed,
    Object? dateAndTime = freezed,
    Object? whatHappened = freezed,
  }) {
    return _then(_value.copyWith(
      reportsId: freezed == reportsId
          ? _value.reportsId
          : reportsId // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      whatHappened: freezed == whatHappened
          ? _value.whatHappened
          : whatHappened // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsImplCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$DetailsImplCopyWith(
          _$DetailsImpl value, $Res Function(_$DetailsImpl) then) =
      __$$DetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? reportsId,
      String? villageId,
      @JsonKey(name: 'date_and_time') String? dateAndTime,
      @JsonKey(name: 'what_happened') String? whatHappened});
}

/// @nodoc
class __$$DetailsImplCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$DetailsImpl>
    implements _$$DetailsImplCopyWith<$Res> {
  __$$DetailsImplCopyWithImpl(
      _$DetailsImpl _value, $Res Function(_$DetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportsId = freezed,
    Object? villageId = freezed,
    Object? dateAndTime = freezed,
    Object? whatHappened = freezed,
  }) {
    return _then(_$DetailsImpl(
      reportsId: freezed == reportsId
          ? _value.reportsId
          : reportsId // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      whatHappened: freezed == whatHappened
          ? _value.whatHappened
          : whatHappened // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsImpl implements _Details {
  _$DetailsImpl(
      {this.reportsId,
      this.villageId,
      @JsonKey(name: 'date_and_time') this.dateAndTime,
      @JsonKey(name: 'what_happened') this.whatHappened});

  factory _$DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsImplFromJson(json);

  @override
  final String? reportsId;
  @override
  final String? villageId;
  @override
  @JsonKey(name: 'date_and_time')
  final String? dateAndTime;
  @override
  @JsonKey(name: 'what_happened')
  final String? whatHappened;

  @override
  String toString() {
    return 'Details(reportsId: $reportsId, villageId: $villageId, dateAndTime: $dateAndTime, whatHappened: $whatHappened)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsImpl &&
            (identical(other.reportsId, reportsId) ||
                other.reportsId == reportsId) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime) &&
            (identical(other.whatHappened, whatHappened) ||
                other.whatHappened == whatHappened));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reportsId, villageId, dateAndTime, whatHappened);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      __$$DetailsImplCopyWithImpl<_$DetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsImplToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  factory _Details(
          {final String? reportsId,
          final String? villageId,
          @JsonKey(name: 'date_and_time') final String? dateAndTime,
          @JsonKey(name: 'what_happened') final String? whatHappened}) =
      _$DetailsImpl;

  factory _Details.fromJson(Map<String, dynamic> json) = _$DetailsImpl.fromJson;

  @override
  String? get reportsId;
  @override
  String? get villageId;
  @override
  @JsonKey(name: 'date_and_time')
  String? get dateAndTime;
  @override
  @JsonKey(name: 'what_happened')
  String? get whatHappened;
  @override
  @JsonKey(ignore: true)
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
