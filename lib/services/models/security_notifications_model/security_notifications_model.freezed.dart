// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_notifications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecurityNotificationsModel _$SecurityNotificationsModelFromJson(
    Map<String, dynamic> json) {
  return _SecurityNotificationsModel.fromJson(json);
}

/// @nodoc
mixin _$SecurityNotificationsModel {
  String? get title => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityNotificationsModelCopyWith<SecurityNotificationsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityNotificationsModelCopyWith<$Res> {
  factory $SecurityNotificationsModelCopyWith(SecurityNotificationsModel value,
          $Res Function(SecurityNotificationsModel) then) =
      _$SecurityNotificationsModelCopyWithImpl<$Res,
          SecurityNotificationsModel>;
  @useResult
  $Res call({String? title, Message? message});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$SecurityNotificationsModelCopyWithImpl<$Res,
        $Val extends SecurityNotificationsModel>
    implements $SecurityNotificationsModelCopyWith<$Res> {
  _$SecurityNotificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SecurityNotificationsModelImplCopyWith<$Res>
    implements $SecurityNotificationsModelCopyWith<$Res> {
  factory _$$SecurityNotificationsModelImplCopyWith(
          _$SecurityNotificationsModelImpl value,
          $Res Function(_$SecurityNotificationsModelImpl) then) =
      __$$SecurityNotificationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$SecurityNotificationsModelImplCopyWithImpl<$Res>
    extends _$SecurityNotificationsModelCopyWithImpl<$Res,
        _$SecurityNotificationsModelImpl>
    implements _$$SecurityNotificationsModelImplCopyWith<$Res> {
  __$$SecurityNotificationsModelImplCopyWithImpl(
      _$SecurityNotificationsModelImpl _value,
      $Res Function(_$SecurityNotificationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SecurityNotificationsModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityNotificationsModelImpl implements _SecurityNotificationsModel {
  _$SecurityNotificationsModelImpl({this.title, this.message});

  factory _$SecurityNotificationsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SecurityNotificationsModelImplFromJson(json);

  @override
  final String? title;
  @override
  final Message? message;

  @override
  String toString() {
    return 'SecurityNotificationsModel(title: $title, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityNotificationsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityNotificationsModelImplCopyWith<_$SecurityNotificationsModelImpl>
      get copyWith => __$$SecurityNotificationsModelImplCopyWithImpl<
          _$SecurityNotificationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityNotificationsModelImplToJson(
      this,
    );
  }
}

abstract class _SecurityNotificationsModel
    implements SecurityNotificationsModel {
  factory _SecurityNotificationsModel(
      {final String? title,
      final Message? message}) = _$SecurityNotificationsModelImpl;

  factory _SecurityNotificationsModel.fromJson(Map<String, dynamic> json) =
      _$SecurityNotificationsModelImpl.fromJson;

  @override
  String? get title;
  @override
  Message? get message;
  @override
  @JsonKey(ignore: true)
  _$$SecurityNotificationsModelImplCopyWith<_$SecurityNotificationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
