// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccinces_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VaccincesResponseModel _$VaccincesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VaccincesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VaccincesResponseModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_of_kid')
  String? get nameOfKid => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_of_mother')
  String? get nameOfMother => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get vaccineTypeId => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_vaccine')
  TypeOfVaccine? get typeOfVaccine => throw _privateConstructorUsedError;
  Village? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccincesResponseModelCopyWith<VaccincesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccincesResponseModelCopyWith<$Res> {
  factory $VaccincesResponseModelCopyWith(VaccincesResponseModel value,
          $Res Function(VaccincesResponseModel) then) =
      _$VaccincesResponseModelCopyWithImpl<$Res, VaccincesResponseModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'name_of_kid') String? nameOfKid,
      String? age,
      @JsonKey(name: 'name_of_mother') String? nameOfMother,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? vaccineTypeId,
      int? villageId,
      @JsonKey(name: 'type_of_vaccine') TypeOfVaccine? typeOfVaccine,
      Village? village});

  $TypeOfVaccineCopyWith<$Res>? get typeOfVaccine;
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class _$VaccincesResponseModelCopyWithImpl<$Res,
        $Val extends VaccincesResponseModel>
    implements $VaccincesResponseModelCopyWith<$Res> {
  _$VaccincesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameOfKid = freezed,
    Object? age = freezed,
    Object? nameOfMother = freezed,
    Object? createdAt = freezed,
    Object? vaccineTypeId = freezed,
    Object? villageId = freezed,
    Object? typeOfVaccine = freezed,
    Object? village = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameOfKid: freezed == nameOfKid
          ? _value.nameOfKid
          : nameOfKid // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      nameOfMother: freezed == nameOfMother
          ? _value.nameOfMother
          : nameOfMother // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vaccineTypeId: freezed == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeOfVaccine: freezed == typeOfVaccine
          ? _value.typeOfVaccine
          : typeOfVaccine // ignore: cast_nullable_to_non_nullable
              as TypeOfVaccine?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeOfVaccineCopyWith<$Res>? get typeOfVaccine {
    if (_value.typeOfVaccine == null) {
      return null;
    }

    return $TypeOfVaccineCopyWith<$Res>(_value.typeOfVaccine!, (value) {
      return _then(_value.copyWith(typeOfVaccine: value) as $Val);
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
abstract class _$$VaccincesResponseModelImplCopyWith<$Res>
    implements $VaccincesResponseModelCopyWith<$Res> {
  factory _$$VaccincesResponseModelImplCopyWith(
          _$VaccincesResponseModelImpl value,
          $Res Function(_$VaccincesResponseModelImpl) then) =
      __$$VaccincesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'name_of_kid') String? nameOfKid,
      String? age,
      @JsonKey(name: 'name_of_mother') String? nameOfMother,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? vaccineTypeId,
      int? villageId,
      @JsonKey(name: 'type_of_vaccine') TypeOfVaccine? typeOfVaccine,
      Village? village});

  @override
  $TypeOfVaccineCopyWith<$Res>? get typeOfVaccine;
  @override
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class __$$VaccincesResponseModelImplCopyWithImpl<$Res>
    extends _$VaccincesResponseModelCopyWithImpl<$Res,
        _$VaccincesResponseModelImpl>
    implements _$$VaccincesResponseModelImplCopyWith<$Res> {
  __$$VaccincesResponseModelImplCopyWithImpl(
      _$VaccincesResponseModelImpl _value,
      $Res Function(_$VaccincesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameOfKid = freezed,
    Object? age = freezed,
    Object? nameOfMother = freezed,
    Object? createdAt = freezed,
    Object? vaccineTypeId = freezed,
    Object? villageId = freezed,
    Object? typeOfVaccine = freezed,
    Object? village = freezed,
  }) {
    return _then(_$VaccincesResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameOfKid: freezed == nameOfKid
          ? _value.nameOfKid
          : nameOfKid // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      nameOfMother: freezed == nameOfMother
          ? _value.nameOfMother
          : nameOfMother // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vaccineTypeId: freezed == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeOfVaccine: freezed == typeOfVaccine
          ? _value.typeOfVaccine
          : typeOfVaccine // ignore: cast_nullable_to_non_nullable
              as TypeOfVaccine?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as Village?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccincesResponseModelImpl implements _VaccincesResponseModel {
  _$VaccincesResponseModelImpl(
      {this.id,
      @JsonKey(name: 'name_of_kid') this.nameOfKid,
      this.age,
      @JsonKey(name: 'name_of_mother') this.nameOfMother,
      @JsonKey(name: 'created_at') this.createdAt,
      this.vaccineTypeId,
      this.villageId,
      @JsonKey(name: 'type_of_vaccine') this.typeOfVaccine,
      this.village});

  factory _$VaccincesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccincesResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'name_of_kid')
  final String? nameOfKid;
  @override
  final String? age;
  @override
  @JsonKey(name: 'name_of_mother')
  final String? nameOfMother;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? vaccineTypeId;
  @override
  final int? villageId;
  @override
  @JsonKey(name: 'type_of_vaccine')
  final TypeOfVaccine? typeOfVaccine;
  @override
  final Village? village;

  @override
  String toString() {
    return 'VaccincesResponseModel(id: $id, nameOfKid: $nameOfKid, age: $age, nameOfMother: $nameOfMother, createdAt: $createdAt, vaccineTypeId: $vaccineTypeId, villageId: $villageId, typeOfVaccine: $typeOfVaccine, village: $village)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccincesResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameOfKid, nameOfKid) ||
                other.nameOfKid == nameOfKid) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.nameOfMother, nameOfMother) ||
                other.nameOfMother == nameOfMother) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.vaccineTypeId, vaccineTypeId) ||
                other.vaccineTypeId == vaccineTypeId) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.typeOfVaccine, typeOfVaccine) ||
                other.typeOfVaccine == typeOfVaccine) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameOfKid, age, nameOfMother,
      createdAt, vaccineTypeId, villageId, typeOfVaccine, village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccincesResponseModelImplCopyWith<_$VaccincesResponseModelImpl>
      get copyWith => __$$VaccincesResponseModelImplCopyWithImpl<
          _$VaccincesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccincesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VaccincesResponseModel implements VaccincesResponseModel {
  factory _VaccincesResponseModel(
      {final int? id,
      @JsonKey(name: 'name_of_kid') final String? nameOfKid,
      final String? age,
      @JsonKey(name: 'name_of_mother') final String? nameOfMother,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? vaccineTypeId,
      final int? villageId,
      @JsonKey(name: 'type_of_vaccine') final TypeOfVaccine? typeOfVaccine,
      final Village? village}) = _$VaccincesResponseModelImpl;

  factory _VaccincesResponseModel.fromJson(Map<String, dynamic> json) =
      _$VaccincesResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'name_of_kid')
  String? get nameOfKid;
  @override
  String? get age;
  @override
  @JsonKey(name: 'name_of_mother')
  String? get nameOfMother;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get vaccineTypeId;
  @override
  int? get villageId;
  @override
  @JsonKey(name: 'type_of_vaccine')
  TypeOfVaccine? get typeOfVaccine;
  @override
  Village? get village;
  @override
  @JsonKey(ignore: true)
  _$$VaccincesResponseModelImplCopyWith<_$VaccincesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
