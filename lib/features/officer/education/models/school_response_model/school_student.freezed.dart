// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchoolStudent _$SchoolStudentFromJson(Map<String, dynamic> json) {
  return _SchoolStudent.fromJson(json);
}

/// @nodoc
mixin _$SchoolStudent {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_number')
  int? get studentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get genderId => throw _privateConstructorUsedError;
  int? get male => throw _privateConstructorUsedError;
  int? get female => throw _privateConstructorUsedError;
  int? get other => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolStudentCopyWith<SchoolStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolStudentCopyWith<$Res> {
  factory $SchoolStudentCopyWith(
          SchoolStudent value, $Res Function(SchoolStudent) then) =
      _$SchoolStudentCopyWithImpl<$Res, SchoolStudent>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'student_number') int? studentNumber,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? genderId,
      int? male,
      int? female,
      int? other,
      int? schoolId,
      Gender? gender});

  $GenderCopyWith<$Res>? get gender;
}

/// @nodoc
class _$SchoolStudentCopyWithImpl<$Res, $Val extends SchoolStudent>
    implements $SchoolStudentCopyWith<$Res> {
  _$SchoolStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentNumber = freezed,
    Object? createdAt = freezed,
    Object? genderId = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? other = freezed,
    Object? schoolId = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      studentNumber: freezed == studentNumber
          ? _value.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
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
}

/// @nodoc
abstract class _$$SchoolStudentImplCopyWith<$Res>
    implements $SchoolStudentCopyWith<$Res> {
  factory _$$SchoolStudentImplCopyWith(
          _$SchoolStudentImpl value, $Res Function(_$SchoolStudentImpl) then) =
      __$$SchoolStudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'student_number') int? studentNumber,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? genderId,
      int? male,
      int? female,
      int? other,
      int? schoolId,
      Gender? gender});

  @override
  $GenderCopyWith<$Res>? get gender;
}

/// @nodoc
class __$$SchoolStudentImplCopyWithImpl<$Res>
    extends _$SchoolStudentCopyWithImpl<$Res, _$SchoolStudentImpl>
    implements _$$SchoolStudentImplCopyWith<$Res> {
  __$$SchoolStudentImplCopyWithImpl(
      _$SchoolStudentImpl _value, $Res Function(_$SchoolStudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentNumber = freezed,
    Object? createdAt = freezed,
    Object? genderId = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? other = freezed,
    Object? schoolId = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$SchoolStudentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      studentNumber: freezed == studentNumber
          ? _value.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolStudentImpl implements _SchoolStudent {
  _$SchoolStudentImpl(
      {this.id,
      @JsonKey(name: 'student_number') this.studentNumber,
      @JsonKey(name: 'created_at') this.createdAt,
      this.genderId,
      this.male,
      this.female,
      this.other,
      this.schoolId,
      this.gender});

  factory _$SchoolStudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolStudentImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'student_number')
  final int? studentNumber;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? genderId;
  @override
  final int? male;
  @override
  final int? female;
  @override
  final int? other;
  @override
  final int? schoolId;
  @override
  final Gender? gender;

  @override
  String toString() {
    return 'SchoolStudent(id: $id, studentNumber: $studentNumber, createdAt: $createdAt, genderId: $genderId, male: $male, female: $female, other: $other, schoolId: $schoolId, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolStudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.female, female) || other.female == female) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, studentNumber, createdAt,
      genderId, male, female, other, schoolId, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolStudentImplCopyWith<_$SchoolStudentImpl> get copyWith =>
      __$$SchoolStudentImplCopyWithImpl<_$SchoolStudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolStudentImplToJson(
      this,
    );
  }
}

abstract class _SchoolStudent implements SchoolStudent {
  factory _SchoolStudent(
      {final int? id,
      @JsonKey(name: 'student_number') final int? studentNumber,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? genderId,
      final int? male,
      final int? female,
      final int? other,
      final int? schoolId,
      final Gender? gender}) = _$SchoolStudentImpl;

  factory _SchoolStudent.fromJson(Map<String, dynamic> json) =
      _$SchoolStudentImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'student_number')
  int? get studentNumber;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get genderId;
  @override
  int? get male;
  @override
  int? get female;
  @override
  int? get other;
  @override
  int? get schoolId;
  @override
  Gender? get gender;
  @override
  @JsonKey(ignore: true)
  _$$SchoolStudentImplCopyWith<_$SchoolStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
