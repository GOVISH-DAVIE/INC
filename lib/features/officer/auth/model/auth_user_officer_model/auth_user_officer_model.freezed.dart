// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_officer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthUserOfficerModel _$AuthUserOfficerModelFromJson(Map<String, dynamic> json) {
  return _AuthUserOfficerModel.fromJson(json);
}

/// @nodoc
mixin _$AuthUserOfficerModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_number')
  int? get serviceNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get permmisions => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pic')
  dynamic get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  Village? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserOfficerModelCopyWith<AuthUserOfficerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserOfficerModelCopyWith<$Res> {
  factory $AuthUserOfficerModelCopyWith(AuthUserOfficerModel value,
          $Res Function(AuthUserOfficerModel) then) =
      _$AuthUserOfficerModelCopyWithImpl<$Res, AuthUserOfficerModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'service_number') int? serviceNumber,
      String? password,
      String? permmisions,
      @JsonKey(name: 'profile_pic') dynamic profilePic,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      int? villageId,
      Village? village});

  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class _$AuthUserOfficerModelCopyWithImpl<$Res,
        $Val extends AuthUserOfficerModel>
    implements $AuthUserOfficerModelCopyWith<$Res> {
  _$AuthUserOfficerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceNumber = freezed,
    Object? password = freezed,
    Object? permmisions = freezed,
    Object? profilePic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? villageId = freezed,
    Object? village = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      permmisions: freezed == permmisions
          ? _value.permmisions
          : permmisions // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ) as $Val);
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
abstract class _$$AuthUserOfficerModelImplCopyWith<$Res>
    implements $AuthUserOfficerModelCopyWith<$Res> {
  factory _$$AuthUserOfficerModelImplCopyWith(_$AuthUserOfficerModelImpl value,
          $Res Function(_$AuthUserOfficerModelImpl) then) =
      __$$AuthUserOfficerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'service_number') int? serviceNumber,
      String? password,
      String? permmisions,
      @JsonKey(name: 'profile_pic') dynamic profilePic,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      int? villageId,
      Village? village});

  @override
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class __$$AuthUserOfficerModelImplCopyWithImpl<$Res>
    extends _$AuthUserOfficerModelCopyWithImpl<$Res, _$AuthUserOfficerModelImpl>
    implements _$$AuthUserOfficerModelImplCopyWith<$Res> {
  __$$AuthUserOfficerModelImplCopyWithImpl(_$AuthUserOfficerModelImpl _value,
      $Res Function(_$AuthUserOfficerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceNumber = freezed,
    Object? password = freezed,
    Object? permmisions = freezed,
    Object? profilePic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? villageId = freezed,
    Object? village = freezed,
  }) {
    return _then(_$AuthUserOfficerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      permmisions: freezed == permmisions
          ? _value.permmisions
          : permmisions // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserOfficerModelImpl implements _AuthUserOfficerModel {
  _$AuthUserOfficerModelImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'service_number') this.serviceNumber,
      this.password,
      this.permmisions,
      @JsonKey(name: 'profile_pic') this.profilePic,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.villageId,
      this.village});

  factory _$AuthUserOfficerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserOfficerModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'service_number')
  final int? serviceNumber;
  @override
  final String? password;
  @override
  final String? permmisions;
  @override
  @JsonKey(name: 'profile_pic')
  final dynamic profilePic;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final int? villageId;
  @override
  final Village? village;

  @override
  String toString() {
    return 'AuthUserOfficerModel(id: $id, name: $name, serviceNumber: $serviceNumber, password: $password, permmisions: $permmisions, profilePic: $profilePic, createdAt: $createdAt, updatedAt: $updatedAt, villageId: $villageId, village: $village)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserOfficerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceNumber, serviceNumber) ||
                other.serviceNumber == serviceNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.permmisions, permmisions) ||
                other.permmisions == permmisions) &&
            const DeepCollectionEquality()
                .equals(other.profilePic, profilePic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      serviceNumber,
      password,
      permmisions,
      const DeepCollectionEquality().hash(profilePic),
      createdAt,
      updatedAt,
      villageId,
      village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserOfficerModelImplCopyWith<_$AuthUserOfficerModelImpl>
      get copyWith =>
          __$$AuthUserOfficerModelImplCopyWithImpl<_$AuthUserOfficerModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserOfficerModelImplToJson(
      this,
    );
  }
}

abstract class _AuthUserOfficerModel implements AuthUserOfficerModel {
  factory _AuthUserOfficerModel(
      {final int? id,
      final String? name,
      @JsonKey(name: 'service_number') final int? serviceNumber,
      final String? password,
      final String? permmisions,
      @JsonKey(name: 'profile_pic') final dynamic profilePic,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final int? villageId,
      final Village? village}) = _$AuthUserOfficerModelImpl;

  factory _AuthUserOfficerModel.fromJson(Map<String, dynamic> json) =
      _$AuthUserOfficerModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'service_number')
  int? get serviceNumber;
  @override
  String? get password;
  @override
  String? get permmisions;
  @override
  @JsonKey(name: 'profile_pic')
  dynamic get profilePic;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  int? get villageId;
  @override
  Village? get village;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserOfficerModelImplCopyWith<_$AuthUserOfficerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
