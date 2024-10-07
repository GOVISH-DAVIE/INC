// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessagesModel _$MessagesModelFromJson(Map<String, dynamic> json) {
  return _MessagesModel.fromJson(json);
}

/// @nodoc
mixin _$MessagesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get context => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'key_points')
  List<String>? get keyPoints => throw _privateConstructorUsedError;
  String? get urgency => throw _privateConstructorUsedError;
  int? get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesModelCopyWith<MessagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesModelCopyWith<$Res> {
  factory $MessagesModelCopyWith(
          MessagesModel value, $Res Function(MessagesModel) then) =
      _$MessagesModelCopyWithImpl<$Res, MessagesModel>;
  @useResult
  $Res call(
      {int? id,
      String? summary,
      String? context,
      String? type,
      @JsonKey(name: 'key_points') List<String>? keyPoints,
      String? urgency,
      int? messageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Message? message});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$MessagesModelCopyWithImpl<$Res, $Val extends MessagesModel>
    implements $MessagesModelCopyWith<$Res> {
  _$MessagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? summary = freezed,
    Object? context = freezed,
    Object? type = freezed,
    Object? keyPoints = freezed,
    Object? urgency = freezed,
    Object? messageId = freezed,
    Object? createdAt = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      keyPoints: freezed == keyPoints
          ? _value.keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      urgency: freezed == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$MessagesModelImplCopyWith<$Res>
    implements $MessagesModelCopyWith<$Res> {
  factory _$$MessagesModelImplCopyWith(
          _$MessagesModelImpl value, $Res Function(_$MessagesModelImpl) then) =
      __$$MessagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? summary,
      String? context,
      String? type,
      @JsonKey(name: 'key_points') List<String>? keyPoints,
      String? urgency,
      int? messageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$MessagesModelImplCopyWithImpl<$Res>
    extends _$MessagesModelCopyWithImpl<$Res, _$MessagesModelImpl>
    implements _$$MessagesModelImplCopyWith<$Res> {
  __$$MessagesModelImplCopyWithImpl(
      _$MessagesModelImpl _value, $Res Function(_$MessagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? summary = freezed,
    Object? context = freezed,
    Object? type = freezed,
    Object? keyPoints = freezed,
    Object? urgency = freezed,
    Object? messageId = freezed,
    Object? createdAt = freezed,
    Object? message = freezed,
  }) {
    return _then(_$MessagesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      keyPoints: freezed == keyPoints
          ? _value._keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      urgency: freezed == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagesModelImpl implements _MessagesModel {
  _$MessagesModelImpl(
      {this.id,
      this.summary,
      this.context,
      this.type,
      @JsonKey(name: 'key_points') final List<String>? keyPoints,
      this.urgency,
      this.messageId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.message})
      : _keyPoints = keyPoints;

  factory _$MessagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagesModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? summary;
  @override
  final String? context;
  @override
  final String? type;
  final List<String>? _keyPoints;
  @override
  @JsonKey(name: 'key_points')
  List<String>? get keyPoints {
    final value = _keyPoints;
    if (value == null) return null;
    if (_keyPoints is EqualUnmodifiableListView) return _keyPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? urgency;
  @override
  final int? messageId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final Message? message;

  @override
  String toString() {
    return 'MessagesModel(id: $id, summary: $summary, context: $context, type: $type, keyPoints: $keyPoints, urgency: $urgency, messageId: $messageId, createdAt: $createdAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._keyPoints, _keyPoints) &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      summary,
      context,
      type,
      const DeepCollectionEquality().hash(_keyPoints),
      urgency,
      messageId,
      createdAt,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesModelImplCopyWith<_$MessagesModelImpl> get copyWith =>
      __$$MessagesModelImplCopyWithImpl<_$MessagesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagesModelImplToJson(
      this,
    );
  }
}

abstract class _MessagesModel implements MessagesModel {
  factory _MessagesModel(
      {final int? id,
      final String? summary,
      final String? context,
      final String? type,
      @JsonKey(name: 'key_points') final List<String>? keyPoints,
      final String? urgency,
      final int? messageId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final Message? message}) = _$MessagesModelImpl;

  factory _MessagesModel.fromJson(Map<String, dynamic> json) =
      _$MessagesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get summary;
  @override
  String? get context;
  @override
  String? get type;
  @override
  @JsonKey(name: 'key_points')
  List<String>? get keyPoints;
  @override
  String? get urgency;
  @override
  int? get messageId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  Message? get message;
  @override
  @JsonKey(ignore: true)
  _$$MessagesModelImplCopyWith<_$MessagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
