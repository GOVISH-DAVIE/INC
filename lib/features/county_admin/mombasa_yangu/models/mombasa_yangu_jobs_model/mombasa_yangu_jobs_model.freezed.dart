// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mombasa_yangu_jobs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MombasaYanguJobsModel _$MombasaYanguJobsModelFromJson(
    Map<String, dynamic> json) {
  return _MombasaYanguJobsModel.fromJson(json);
}

/// @nodoc
mixin _$MombasaYanguJobsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime => throw _privateConstructorUsedError;
  int? get mombasaYanguId => throw _privateConstructorUsedError;
  int? get wardId => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Ward? get ward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MombasaYanguJobsModelCopyWith<MombasaYanguJobsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MombasaYanguJobsModelCopyWith<$Res> {
  factory $MombasaYanguJobsModelCopyWith(MombasaYanguJobsModel value,
          $Res Function(MombasaYanguJobsModel) then) =
      _$MombasaYanguJobsModelCopyWithImpl<$Res, MombasaYanguJobsModel>;
  @useResult
  $Res call(
      {int? id,
      String? job,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
      int? mombasaYanguId,
      int? wardId,
      User? user,
      Ward? ward});

  $UserCopyWith<$Res>? get user;
  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class _$MombasaYanguJobsModelCopyWithImpl<$Res,
        $Val extends MombasaYanguJobsModel>
    implements $MombasaYanguJobsModelCopyWith<$Res> {
  _$MombasaYanguJobsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? job = freezed,
    Object? dateAndTime = freezed,
    Object? mombasaYanguId = freezed,
    Object? wardId = freezed,
    Object? user = freezed,
    Object? ward = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mombasaYanguId: freezed == mombasaYanguId
          ? _value.mombasaYanguId
          : mombasaYanguId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as Ward?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WardCopyWith<$Res>? get ward {
    if (_value.ward == null) {
      return null;
    }

    return $WardCopyWith<$Res>(_value.ward!, (value) {
      return _then(_value.copyWith(ward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MombasaYanguJobsModelImplCopyWith<$Res>
    implements $MombasaYanguJobsModelCopyWith<$Res> {
  factory _$$MombasaYanguJobsModelImplCopyWith(
          _$MombasaYanguJobsModelImpl value,
          $Res Function(_$MombasaYanguJobsModelImpl) then) =
      __$$MombasaYanguJobsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? job,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
      int? mombasaYanguId,
      int? wardId,
      User? user,
      Ward? ward});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class __$$MombasaYanguJobsModelImplCopyWithImpl<$Res>
    extends _$MombasaYanguJobsModelCopyWithImpl<$Res,
        _$MombasaYanguJobsModelImpl>
    implements _$$MombasaYanguJobsModelImplCopyWith<$Res> {
  __$$MombasaYanguJobsModelImplCopyWithImpl(_$MombasaYanguJobsModelImpl _value,
      $Res Function(_$MombasaYanguJobsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? job = freezed,
    Object? dateAndTime = freezed,
    Object? mombasaYanguId = freezed,
    Object? wardId = freezed,
    Object? user = freezed,
    Object? ward = freezed,
  }) {
    return _then(_$MombasaYanguJobsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mombasaYanguId: freezed == mombasaYanguId
          ? _value.mombasaYanguId
          : mombasaYanguId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as Ward?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MombasaYanguJobsModelImpl implements _MombasaYanguJobsModel {
  _$MombasaYanguJobsModelImpl(
      {this.id,
      this.job,
      @JsonKey(name: 'date_and_time') this.dateAndTime,
      this.mombasaYanguId,
      this.wardId,
      this.user,
      this.ward});

  factory _$MombasaYanguJobsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MombasaYanguJobsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? job;
  @override
  @JsonKey(name: 'date_and_time')
  final DateTime? dateAndTime;
  @override
  final int? mombasaYanguId;
  @override
  final int? wardId;
  @override
  final User? user;
  @override
  final Ward? ward;

  @override
  String toString() {
    return 'MombasaYanguJobsModel(id: $id, job: $job, dateAndTime: $dateAndTime, mombasaYanguId: $mombasaYanguId, wardId: $wardId, user: $user, ward: $ward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MombasaYanguJobsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime) &&
            (identical(other.mombasaYanguId, mombasaYanguId) ||
                other.mombasaYanguId == mombasaYanguId) &&
            (identical(other.wardId, wardId) || other.wardId == wardId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.ward, ward) || other.ward == ward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, job, dateAndTime, mombasaYanguId, wardId, user, ward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MombasaYanguJobsModelImplCopyWith<_$MombasaYanguJobsModelImpl>
      get copyWith => __$$MombasaYanguJobsModelImplCopyWithImpl<
          _$MombasaYanguJobsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MombasaYanguJobsModelImplToJson(
      this,
    );
  }
}

abstract class _MombasaYanguJobsModel implements MombasaYanguJobsModel {
  factory _MombasaYanguJobsModel(
      {final int? id,
      final String? job,
      @JsonKey(name: 'date_and_time') final DateTime? dateAndTime,
      final int? mombasaYanguId,
      final int? wardId,
      final User? user,
      final Ward? ward}) = _$MombasaYanguJobsModelImpl;

  factory _MombasaYanguJobsModel.fromJson(Map<String, dynamic> json) =
      _$MombasaYanguJobsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get job;
  @override
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime;
  @override
  int? get mombasaYanguId;
  @override
  int? get wardId;
  @override
  User? get user;
  @override
  Ward? get ward;
  @override
  @JsonKey(ignore: true)
  _$$MombasaYanguJobsModelImplCopyWith<_$MombasaYanguJobsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
