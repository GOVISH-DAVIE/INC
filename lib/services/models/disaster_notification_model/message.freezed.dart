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
  int? get disasterId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_and_time')
  dynamic get dateAndTime => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get homesteads => throw _privateConstructorUsedError;
  int? get deaths => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Disaster? get disaster => throw _privateConstructorUsedError;
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
      int? disasterId,
      String? description,
      @JsonKey(name: 'date_and_time') dynamic dateAndTime,
      String? image,
      int? homesteads,
      int? deaths,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Disaster? disaster,
      Village? village});

  $DisasterCopyWith<$Res>? get disaster;
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
    Object? disasterId = freezed,
    Object? description = freezed,
    Object? dateAndTime = freezed,
    Object? image = freezed,
    Object? homesteads = freezed,
    Object? deaths = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
    Object? disaster = freezed,
    Object? village = freezed,
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
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      disaster: freezed == disaster
          ? _value.disaster
          : disaster // ignore: cast_nullable_to_non_nullable
              as Disaster?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DisasterCopyWith<$Res>? get disaster {
    if (_value.disaster == null) {
      return null;
    }

    return $DisasterCopyWith<$Res>(_value.disaster!, (value) {
      return _then(_value.copyWith(disaster: value) as $Val);
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
      int? disasterId,
      String? description,
      @JsonKey(name: 'date_and_time') dynamic dateAndTime,
      String? image,
      int? homesteads,
      int? deaths,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Disaster? disaster,
      Village? village});

  @override
  $DisasterCopyWith<$Res>? get disaster;
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
    Object? disasterId = freezed,
    Object? description = freezed,
    Object? dateAndTime = freezed,
    Object? image = freezed,
    Object? homesteads = freezed,
    Object? deaths = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
    Object? disaster = freezed,
    Object? village = freezed,
  }) {
    return _then(_$MessageImpl(
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
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      disaster: freezed == disaster
          ? _value.disaster
          : disaster // ignore: cast_nullable_to_non_nullable
              as Disaster?,
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
      this.disasterId,
      this.description,
      @JsonKey(name: 'date_and_time') this.dateAndTime,
      this.image,
      this.homesteads,
      this.deaths,
      this.villageId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.disaster,
      this.village});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int? id;
  @override
  final int? disasterId;
  @override
  final String? description;
  @override
  @JsonKey(name: 'date_and_time')
  final dynamic dateAndTime;
  @override
  final String? image;
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
  final Disaster? disaster;
  @override
  final Village? village;

  @override
  String toString() {
    return 'Message(id: $id, disasterId: $disasterId, description: $description, dateAndTime: $dateAndTime, image: $image, homesteads: $homesteads, deaths: $deaths, villageId: $villageId, createdAt: $createdAt, disaster: $disaster, village: $village)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.disasterId, disasterId) ||
                other.disasterId == disasterId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.dateAndTime, dateAndTime) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.homesteads, homesteads) ||
                other.homesteads == homesteads) &&
            (identical(other.deaths, deaths) || other.deaths == deaths) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.disaster, disaster) ||
                other.disaster == disaster) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      disasterId,
      description,
      const DeepCollectionEquality().hash(dateAndTime),
      image,
      homesteads,
      deaths,
      villageId,
      createdAt,
      disaster,
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
      final int? disasterId,
      final String? description,
      @JsonKey(name: 'date_and_time') final dynamic dateAndTime,
      final String? image,
      final int? homesteads,
      final int? deaths,
      final int? villageId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final Disaster? disaster,
      final Village? village}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  int? get id;
  @override
  int? get disasterId;
  @override
  String? get description;
  @override
  @JsonKey(name: 'date_and_time')
  dynamic get dateAndTime;
  @override
  String? get image;
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
  Disaster? get disaster;
  @override
  Village? get village;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
