// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipients _$RecipientsFromJson(Map<String, dynamic> json) {
  return _Recipients.fromJson(json);
}

/// @nodoc
mixin _$Recipients {
  @JsonKey(name: 'type_of_relief')
  String? get typeOfRelief => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_name_1')
  String? get recipientName1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_contact_details_1')
  String? get recipientContactDetails1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipientsCopyWith<Recipients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientsCopyWith<$Res> {
  factory $RecipientsCopyWith(
          Recipients value, $Res Function(Recipients) then) =
      _$RecipientsCopyWithImpl<$Res, Recipients>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type_of_relief') String? typeOfRelief,
      @JsonKey(name: 'recipient_name_1') String? recipientName1,
      @JsonKey(name: 'recipient_contact_details_1')
      String? recipientContactDetails1});
}

/// @nodoc
class _$RecipientsCopyWithImpl<$Res, $Val extends Recipients>
    implements $RecipientsCopyWith<$Res> {
  _$RecipientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeOfRelief = freezed,
    Object? recipientName1 = freezed,
    Object? recipientContactDetails1 = freezed,
  }) {
    return _then(_value.copyWith(
      typeOfRelief: freezed == typeOfRelief
          ? _value.typeOfRelief
          : typeOfRelief // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName1: freezed == recipientName1
          ? _value.recipientName1
          : recipientName1 // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientContactDetails1: freezed == recipientContactDetails1
          ? _value.recipientContactDetails1
          : recipientContactDetails1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipientsImplCopyWith<$Res>
    implements $RecipientsCopyWith<$Res> {
  factory _$$RecipientsImplCopyWith(
          _$RecipientsImpl value, $Res Function(_$RecipientsImpl) then) =
      __$$RecipientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type_of_relief') String? typeOfRelief,
      @JsonKey(name: 'recipient_name_1') String? recipientName1,
      @JsonKey(name: 'recipient_contact_details_1')
      String? recipientContactDetails1});
}

/// @nodoc
class __$$RecipientsImplCopyWithImpl<$Res>
    extends _$RecipientsCopyWithImpl<$Res, _$RecipientsImpl>
    implements _$$RecipientsImplCopyWith<$Res> {
  __$$RecipientsImplCopyWithImpl(
      _$RecipientsImpl _value, $Res Function(_$RecipientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeOfRelief = freezed,
    Object? recipientName1 = freezed,
    Object? recipientContactDetails1 = freezed,
  }) {
    return _then(_$RecipientsImpl(
      typeOfRelief: freezed == typeOfRelief
          ? _value.typeOfRelief
          : typeOfRelief // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName1: freezed == recipientName1
          ? _value.recipientName1
          : recipientName1 // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientContactDetails1: freezed == recipientContactDetails1
          ? _value.recipientContactDetails1
          : recipientContactDetails1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipientsImpl implements _Recipients {
  _$RecipientsImpl(
      {@JsonKey(name: 'type_of_relief') this.typeOfRelief,
      @JsonKey(name: 'recipient_name_1') this.recipientName1,
      @JsonKey(name: 'recipient_contact_details_1')
      this.recipientContactDetails1});

  factory _$RecipientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipientsImplFromJson(json);

  @override
  @JsonKey(name: 'type_of_relief')
  final String? typeOfRelief;
  @override
  @JsonKey(name: 'recipient_name_1')
  final String? recipientName1;
  @override
  @JsonKey(name: 'recipient_contact_details_1')
  final String? recipientContactDetails1;

  @override
  String toString() {
    return 'Recipients(typeOfRelief: $typeOfRelief, recipientName1: $recipientName1, recipientContactDetails1: $recipientContactDetails1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientsImpl &&
            (identical(other.typeOfRelief, typeOfRelief) ||
                other.typeOfRelief == typeOfRelief) &&
            (identical(other.recipientName1, recipientName1) ||
                other.recipientName1 == recipientName1) &&
            (identical(
                    other.recipientContactDetails1, recipientContactDetails1) ||
                other.recipientContactDetails1 == recipientContactDetails1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, typeOfRelief, recipientName1, recipientContactDetails1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientsImplCopyWith<_$RecipientsImpl> get copyWith =>
      __$$RecipientsImplCopyWithImpl<_$RecipientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipientsImplToJson(
      this,
    );
  }
}

abstract class _Recipients implements Recipients {
  factory _Recipients(
      {@JsonKey(name: 'type_of_relief') final String? typeOfRelief,
      @JsonKey(name: 'recipient_name_1') final String? recipientName1,
      @JsonKey(name: 'recipient_contact_details_1')
      final String? recipientContactDetails1}) = _$RecipientsImpl;

  factory _Recipients.fromJson(Map<String, dynamic> json) =
      _$RecipientsImpl.fromJson;

  @override
  @JsonKey(name: 'type_of_relief')
  String? get typeOfRelief;
  @override
  @JsonKey(name: 'recipient_name_1')
  String? get recipientName1;
  @override
  @JsonKey(name: 'recipient_contact_details_1')
  String? get recipientContactDetails1;
  @override
  @JsonKey(ignore: true)
  _$$RecipientsImplCopyWith<_$RecipientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
