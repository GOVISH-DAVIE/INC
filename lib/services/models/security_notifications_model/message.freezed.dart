// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int? get id => throw _privateConstructorUsedError;
  int? get reportsId => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get details => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Report? get report => throw _privateConstructorUsedError;
  Village? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {int? id,
      int? reportsId,
      Map<dynamic, dynamic>? details,
      int? villageId,
      String? image,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Report? report,
      Village? village});

  $ReportCopyWith<$Res>? get report;
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reportsId = freezed,
    Object? details = freezed,
    Object? villageId = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? report = freezed,
    Object? village = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reportsId: freezed == reportsId
          ? _value.reportsId
          : reportsId // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $ReportCopyWith<$Res>(_value.report!, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
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
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? reportsId,
      Map<dynamic, dynamic>? details,
      int? villageId,
      String? image,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Report? report,
      Village? village});

  @override
  $ReportCopyWith<$Res>? get report;
  @override
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reportsId = freezed,
    Object? details = freezed,
    Object? villageId = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? report = freezed,
    Object? village = freezed,
  }) {
    return _then(_$MessageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reportsId: freezed == reportsId
          ? _value.reportsId
          : reportsId // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  _$MessageImpl(
      {this.id,
      this.reportsId,
      final Map<dynamic, dynamic>? details,
      this.villageId,
      this.image,
      @JsonKey(name: 'created_at') this.createdAt,
      this.report,
      this.village})
      : _details = details;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int? id;
  @override
  final int? reportsId;
  final Map<dynamic, dynamic>? _details;
  @override
  Map<dynamic, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? villageId;
  @override
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final Report? report;
  @override
  final Village? village;

  @override
  String toString() {
    return 'Message(id: $id, reportsId: $reportsId, details: $details, villageId: $villageId, image: $image, createdAt: $createdAt, report: $report, village: $village)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reportsId, reportsId) ||
                other.reportsId == reportsId) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reportsId,
      const DeepCollectionEquality().hash(_details),
      villageId,
      image,
      createdAt,
      report,
      village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  factory _Message(
      {final int? id,
      final int? reportsId,
      final Map<dynamic, dynamic>? details,
      final int? villageId,
      final String? image,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final Report? report,
      final Village? village}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  int? get id;
  @override
  int? get reportsId;
  @override
  Map<dynamic, dynamic>? get details;
  @override
  int? get villageId;
  @override
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  Report? get report;
  @override
  Village? get village;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
