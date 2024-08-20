// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchoolResponseModel _$SchoolResponseModelFromJson(Map<String, dynamic> json) {
  return _SchoolResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SchoolResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get schoolCategoriesId => throw _privateConstructorUsedError;
  int? get wardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_categories')
  SchoolCategories? get schoolCategories => throw _privateConstructorUsedError;
  Ward? get ward => throw _privateConstructorUsedError;
  @JsonKey(name: 'SchoolStudents')
  List<SchoolStudent>? get schoolStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'SchoolTeachers')
  List<SchoolTeacher>? get schoolTeachers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolResponseModelCopyWith<SchoolResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolResponseModelCopyWith<$Res> {
  factory $SchoolResponseModelCopyWith(
          SchoolResponseModel value, $Res Function(SchoolResponseModel) then) =
      _$SchoolResponseModelCopyWithImpl<$Res, SchoolResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? schoolCategoriesId,
      int? wardId,
      @JsonKey(name: 'school_categories') SchoolCategories? schoolCategories,
      Ward? ward,
      @JsonKey(name: 'SchoolStudents') List<SchoolStudent>? schoolStudents,
      @JsonKey(name: 'SchoolTeachers') List<SchoolTeacher>? schoolTeachers});

  $SchoolCategoriesCopyWith<$Res>? get schoolCategories;
  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class _$SchoolResponseModelCopyWithImpl<$Res, $Val extends SchoolResponseModel>
    implements $SchoolResponseModelCopyWith<$Res> {
  _$SchoolResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? schoolCategoriesId = freezed,
    Object? wardId = freezed,
    Object? schoolCategories = freezed,
    Object? ward = freezed,
    Object? schoolStudents = freezed,
    Object? schoolTeachers = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolCategoriesId: freezed == schoolCategoriesId
          ? _value.schoolCategoriesId
          : schoolCategoriesId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCategories: freezed == schoolCategories
          ? _value.schoolCategories
          : schoolCategories // ignore: cast_nullable_to_non_nullable
              as SchoolCategories?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as Ward?,
      schoolStudents: freezed == schoolStudents
          ? _value.schoolStudents
          : schoolStudents // ignore: cast_nullable_to_non_nullable
              as List<SchoolStudent>?,
      schoolTeachers: freezed == schoolTeachers
          ? _value.schoolTeachers
          : schoolTeachers // ignore: cast_nullable_to_non_nullable
              as List<SchoolTeacher>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchoolCategoriesCopyWith<$Res>? get schoolCategories {
    if (_value.schoolCategories == null) {
      return null;
    }

    return $SchoolCategoriesCopyWith<$Res>(_value.schoolCategories!, (value) {
      return _then(_value.copyWith(schoolCategories: value) as $Val);
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
abstract class _$$SchoolResponseModelImplCopyWith<$Res>
    implements $SchoolResponseModelCopyWith<$Res> {
  factory _$$SchoolResponseModelImplCopyWith(_$SchoolResponseModelImpl value,
          $Res Function(_$SchoolResponseModelImpl) then) =
      __$$SchoolResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? schoolCategoriesId,
      int? wardId,
      @JsonKey(name: 'school_categories') SchoolCategories? schoolCategories,
      Ward? ward,
      @JsonKey(name: 'SchoolStudents') List<SchoolStudent>? schoolStudents,
      @JsonKey(name: 'SchoolTeachers') List<SchoolTeacher>? schoolTeachers});

  @override
  $SchoolCategoriesCopyWith<$Res>? get schoolCategories;
  @override
  $WardCopyWith<$Res>? get ward;
}

/// @nodoc
class __$$SchoolResponseModelImplCopyWithImpl<$Res>
    extends _$SchoolResponseModelCopyWithImpl<$Res, _$SchoolResponseModelImpl>
    implements _$$SchoolResponseModelImplCopyWith<$Res> {
  __$$SchoolResponseModelImplCopyWithImpl(_$SchoolResponseModelImpl _value,
      $Res Function(_$SchoolResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? schoolCategoriesId = freezed,
    Object? wardId = freezed,
    Object? schoolCategories = freezed,
    Object? ward = freezed,
    Object? schoolStudents = freezed,
    Object? schoolTeachers = freezed,
  }) {
    return _then(_$SchoolResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolCategoriesId: freezed == schoolCategoriesId
          ? _value.schoolCategoriesId
          : schoolCategoriesId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCategories: freezed == schoolCategories
          ? _value.schoolCategories
          : schoolCategories // ignore: cast_nullable_to_non_nullable
              as SchoolCategories?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as Ward?,
      schoolStudents: freezed == schoolStudents
          ? _value._schoolStudents
          : schoolStudents // ignore: cast_nullable_to_non_nullable
              as List<SchoolStudent>?,
      schoolTeachers: freezed == schoolTeachers
          ? _value._schoolTeachers
          : schoolTeachers // ignore: cast_nullable_to_non_nullable
              as List<SchoolTeacher>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolResponseModelImpl implements _SchoolResponseModel {
  _$SchoolResponseModelImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      this.schoolCategoriesId,
      this.wardId,
      @JsonKey(name: 'school_categories') this.schoolCategories,
      this.ward,
      @JsonKey(name: 'SchoolStudents')
      final List<SchoolStudent>? schoolStudents,
      @JsonKey(name: 'SchoolTeachers')
      final List<SchoolTeacher>? schoolTeachers})
      : _schoolStudents = schoolStudents,
        _schoolTeachers = schoolTeachers;

  factory _$SchoolResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? schoolCategoriesId;
  @override
  final int? wardId;
  @override
  @JsonKey(name: 'school_categories')
  final SchoolCategories? schoolCategories;
  @override
  final Ward? ward;
  final List<SchoolStudent>? _schoolStudents;
  @override
  @JsonKey(name: 'SchoolStudents')
  List<SchoolStudent>? get schoolStudents {
    final value = _schoolStudents;
    if (value == null) return null;
    if (_schoolStudents is EqualUnmodifiableListView) return _schoolStudents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SchoolTeacher>? _schoolTeachers;
  @override
  @JsonKey(name: 'SchoolTeachers')
  List<SchoolTeacher>? get schoolTeachers {
    final value = _schoolTeachers;
    if (value == null) return null;
    if (_schoolTeachers is EqualUnmodifiableListView) return _schoolTeachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SchoolResponseModel(id: $id, name: $name, createdAt: $createdAt, schoolCategoriesId: $schoolCategoriesId, wardId: $wardId, schoolCategories: $schoolCategories, ward: $ward, schoolStudents: $schoolStudents, schoolTeachers: $schoolTeachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.schoolCategoriesId, schoolCategoriesId) ||
                other.schoolCategoriesId == schoolCategoriesId) &&
            (identical(other.wardId, wardId) || other.wardId == wardId) &&
            (identical(other.schoolCategories, schoolCategories) ||
                other.schoolCategories == schoolCategories) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            const DeepCollectionEquality()
                .equals(other._schoolStudents, _schoolStudents) &&
            const DeepCollectionEquality()
                .equals(other._schoolTeachers, _schoolTeachers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      createdAt,
      schoolCategoriesId,
      wardId,
      schoolCategories,
      ward,
      const DeepCollectionEquality().hash(_schoolStudents),
      const DeepCollectionEquality().hash(_schoolTeachers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolResponseModelImplCopyWith<_$SchoolResponseModelImpl> get copyWith =>
      __$$SchoolResponseModelImplCopyWithImpl<_$SchoolResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SchoolResponseModel implements SchoolResponseModel {
  factory _SchoolResponseModel(
      {final int? id,
      final String? name,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? schoolCategoriesId,
      final int? wardId,
      @JsonKey(name: 'school_categories')
      final SchoolCategories? schoolCategories,
      final Ward? ward,
      @JsonKey(name: 'SchoolStudents')
      final List<SchoolStudent>? schoolStudents,
      @JsonKey(name: 'SchoolTeachers')
      final List<SchoolTeacher>? schoolTeachers}) = _$SchoolResponseModelImpl;

  factory _SchoolResponseModel.fromJson(Map<String, dynamic> json) =
      _$SchoolResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get schoolCategoriesId;
  @override
  int? get wardId;
  @override
  @JsonKey(name: 'school_categories')
  SchoolCategories? get schoolCategories;
  @override
  Ward? get ward;
  @override
  @JsonKey(name: 'SchoolStudents')
  List<SchoolStudent>? get schoolStudents;
  @override
  @JsonKey(name: 'SchoolTeachers')
  List<SchoolTeacher>? get schoolTeachers;
  @override
  @JsonKey(ignore: true)
  _$$SchoolResponseModelImplCopyWith<_$SchoolResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
