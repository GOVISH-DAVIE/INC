// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplicationsModel _$ApplicationsModelFromJson(Map<String, dynamic> json) {
  return _ApplicationsModel.fromJson(json);
}

/// @nodoc
mixin _$ApplicationsModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'application_type')
  String? get applicationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_application')
  String? get dateOfApplication => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  Village? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationsModelCopyWith<ApplicationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationsModelCopyWith<$Res> {
  factory $ApplicationsModelCopyWith(
          ApplicationsModel value, $Res Function(ApplicationsModel) then) =
      _$ApplicationsModelCopyWithImpl<$Res, ApplicationsModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'application_type') String? applicationType,
      @JsonKey(name: 'date_of_application') String? dateOfApplication,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      int? villageId,
      Village? village});

  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class _$ApplicationsModelCopyWithImpl<$Res, $Val extends ApplicationsModel>
    implements $ApplicationsModelCopyWith<$Res> {
  _$ApplicationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? applicationType = freezed,
    Object? dateOfApplication = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? villageId = freezed,
    Object? village = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationType: freezed == applicationType
          ? _value.applicationType
          : applicationType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfApplication: freezed == dateOfApplication
          ? _value.dateOfApplication
          : dateOfApplication // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ApplicationsModelImplCopyWith<$Res>
    implements $ApplicationsModelCopyWith<$Res> {
  factory _$$ApplicationsModelImplCopyWith(_$ApplicationsModelImpl value,
          $Res Function(_$ApplicationsModelImpl) then) =
      __$$ApplicationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'application_type') String? applicationType,
      @JsonKey(name: 'date_of_application') String? dateOfApplication,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      int? villageId,
      Village? village});

  @override
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class __$$ApplicationsModelImplCopyWithImpl<$Res>
    extends _$ApplicationsModelCopyWithImpl<$Res, _$ApplicationsModelImpl>
    implements _$$ApplicationsModelImplCopyWith<$Res> {
  __$$ApplicationsModelImplCopyWithImpl(_$ApplicationsModelImpl _value,
      $Res Function(_$ApplicationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? applicationType = freezed,
    Object? dateOfApplication = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? villageId = freezed,
    Object? village = freezed,
  }) {
    return _then(_$ApplicationsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationType: freezed == applicationType
          ? _value.applicationType
          : applicationType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfApplication: freezed == dateOfApplication
          ? _value.dateOfApplication
          : dateOfApplication // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ApplicationsModelImpl implements _ApplicationsModel {
  _$ApplicationsModelImpl(
      {this.id,
      @JsonKey(name: 'application_type') this.applicationType,
      @JsonKey(name: 'date_of_application') this.dateOfApplication,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      this.villageId,
      this.village});

  factory _$ApplicationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicationsModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'application_type')
  final String? applicationType;
  @override
  @JsonKey(name: 'date_of_application')
  final String? dateOfApplication;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  final int? villageId;
  @override
  final Village? village;

  @override
  String toString() {
    return 'ApplicationsModel(id: $id, applicationType: $applicationType, dateOfApplication: $dateOfApplication, startDate: $startDate, endDate: $endDate, villageId: $villageId, village: $village)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.applicationType, applicationType) ||
                other.applicationType == applicationType) &&
            (identical(other.dateOfApplication, dateOfApplication) ||
                other.dateOfApplication == dateOfApplication) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, applicationType,
      dateOfApplication, startDate, endDate, villageId, village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationsModelImplCopyWith<_$ApplicationsModelImpl> get copyWith =>
      __$$ApplicationsModelImplCopyWithImpl<_$ApplicationsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationsModelImplToJson(
      this,
    );
  }
}

abstract class _ApplicationsModel implements ApplicationsModel {
  factory _ApplicationsModel(
      {final int? id,
      @JsonKey(name: 'application_type') final String? applicationType,
      @JsonKey(name: 'date_of_application') final String? dateOfApplication,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'end_date') final String? endDate,
      final int? villageId,
      final Village? village}) = _$ApplicationsModelImpl;

  factory _ApplicationsModel.fromJson(Map<String, dynamic> json) =
      _$ApplicationsModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'application_type')
  String? get applicationType;
  @override
  @JsonKey(name: 'date_of_application')
  String? get dateOfApplication;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  int? get villageId;
  @override
  Village? get village;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationsModelImplCopyWith<_$ApplicationsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
