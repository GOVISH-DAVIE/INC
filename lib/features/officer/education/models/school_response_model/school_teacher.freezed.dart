// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchoolTeacher _$SchoolTeacherFromJson(Map<String, dynamic> json) {
  return _SchoolTeacher.fromJson(json);
}

/// @nodoc
mixin _$SchoolTeacher {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'teachers_count')
  int? get teachersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;
  int? get genderId => throw _privateConstructorUsedError;
  int? get male => throw _privateConstructorUsedError;
  int? get female => throw _privateConstructorUsedError;
  int? get other => throw _privateConstructorUsedError;
  int? get teacherDesignationId => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  Designation? get designation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolTeacherCopyWith<SchoolTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolTeacherCopyWith<$Res> {
  factory $SchoolTeacherCopyWith(
          SchoolTeacher value, $Res Function(SchoolTeacher) then) =
      _$SchoolTeacherCopyWithImpl<$Res, SchoolTeacher>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'teachers_count') int? teachersCount,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? schoolId,
      int? genderId,
      int? male,
      int? female,
      int? other,
      int? teacherDesignationId,
      Gender? gender,
      Designation? designation});

  $GenderCopyWith<$Res>? get gender;
  $DesignationCopyWith<$Res>? get designation;
}

/// @nodoc
class _$SchoolTeacherCopyWithImpl<$Res, $Val extends SchoolTeacher>
    implements $SchoolTeacherCopyWith<$Res> {
  _$SchoolTeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? teachersCount = freezed,
    Object? createdAt = freezed,
    Object? schoolId = freezed,
    Object? genderId = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? other = freezed,
    Object? teacherDesignationId = freezed,
    Object? gender = freezed,
    Object? designation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      teachersCount: freezed == teachersCount
          ? _value.teachersCount
          : teachersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as int?,
      female: freezed == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as int?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherDesignationId: freezed == teacherDesignationId
          ? _value.teacherDesignationId
          : teacherDesignationId // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignationCopyWith<$Res>? get designation {
    if (_value.designation == null) {
      return null;
    }

    return $DesignationCopyWith<$Res>(_value.designation!, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchoolTeacherImplCopyWith<$Res>
    implements $SchoolTeacherCopyWith<$Res> {
  factory _$$SchoolTeacherImplCopyWith(
          _$SchoolTeacherImpl value, $Res Function(_$SchoolTeacherImpl) then) =
      __$$SchoolTeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'teachers_count') int? teachersCount,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? schoolId,
      int? genderId,
      int? male,
      int? female,
      int? other,
      int? teacherDesignationId,
      Gender? gender,
      Designation? designation});

  @override
  $GenderCopyWith<$Res>? get gender;
  @override
  $DesignationCopyWith<$Res>? get designation;
}

/// @nodoc
class __$$SchoolTeacherImplCopyWithImpl<$Res>
    extends _$SchoolTeacherCopyWithImpl<$Res, _$SchoolTeacherImpl>
    implements _$$SchoolTeacherImplCopyWith<$Res> {
  __$$SchoolTeacherImplCopyWithImpl(
      _$SchoolTeacherImpl _value, $Res Function(_$SchoolTeacherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? teachersCount = freezed,
    Object? createdAt = freezed,
    Object? schoolId = freezed,
    Object? genderId = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? other = freezed,
    Object? teacherDesignationId = freezed,
    Object? gender = freezed,
    Object? designation = freezed,
  }) {
    return _then(_$SchoolTeacherImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      teachersCount: freezed == teachersCount
          ? _value.teachersCount
          : teachersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as int?,
      female: freezed == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as int?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherDesignationId: freezed == teacherDesignationId
          ? _value.teacherDesignationId
          : teacherDesignationId // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolTeacherImpl implements _SchoolTeacher {
  _$SchoolTeacherImpl(
      {this.id,
      @JsonKey(name: 'teachers_count') this.teachersCount,
      @JsonKey(name: 'created_at') this.createdAt,
      this.schoolId,
      this.genderId,
      this.male,
      this.female,
      this.other,
      this.teacherDesignationId,
      this.gender,
      this.designation});

  factory _$SchoolTeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolTeacherImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'teachers_count')
  final int? teachersCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? schoolId;
  @override
  final int? genderId;
  @override
  final int? male;
  @override
  final int? female;
  @override
  final int? other;
  @override
  final int? teacherDesignationId;
  @override
  final Gender? gender;
  @override
  final Designation? designation;

  @override
  String toString() {
    return 'SchoolTeacher(id: $id, teachersCount: $teachersCount, createdAt: $createdAt, schoolId: $schoolId, genderId: $genderId, male: $male, female: $female, other: $other, teacherDesignationId: $teacherDesignationId, gender: $gender, designation: $designation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolTeacherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teachersCount, teachersCount) ||
                other.teachersCount == teachersCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.female, female) || other.female == female) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.teacherDesignationId, teacherDesignationId) ||
                other.teacherDesignationId == teacherDesignationId) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      teachersCount,
      createdAt,
      schoolId,
      genderId,
      male,
      female,
      other,
      teacherDesignationId,
      gender,
      designation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolTeacherImplCopyWith<_$SchoolTeacherImpl> get copyWith =>
      __$$SchoolTeacherImplCopyWithImpl<_$SchoolTeacherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolTeacherImplToJson(
      this,
    );
  }
}

abstract class _SchoolTeacher implements SchoolTeacher {
  factory _SchoolTeacher(
      {final int? id,
      @JsonKey(name: 'teachers_count') final int? teachersCount,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? schoolId,
      final int? genderId,
      final int? male,
      final int? female,
      final int? other,
      final int? teacherDesignationId,
      final Gender? gender,
      final Designation? designation}) = _$SchoolTeacherImpl;

  factory _SchoolTeacher.fromJson(Map<String, dynamic> json) =
      _$SchoolTeacherImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'teachers_count')
  int? get teachersCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get schoolId;
  @override
  int? get genderId;
  @override
  int? get male;
  @override
  int? get female;
  @override
  int? get other;
  @override
  int? get teacherDesignationId;
  @override
  Gender? get gender;
  @override
  Designation? get designation;
  @override
  @JsonKey(ignore: true)
  _$$SchoolTeacherImplCopyWith<_$SchoolTeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
