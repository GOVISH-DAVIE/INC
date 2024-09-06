// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_occurence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportOccurenceModel _$ReportOccurenceModelFromJson(Map<String, dynamic> json) {
  return _ReportOccurenceModel.fromJson(json);
}

/// @nodoc
mixin _$ReportOccurenceModel {
  int? get id => throw _privateConstructorUsedError;
  int? get reportsId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'who_was_affected')
  String? get whoWasAffected => throw _privateConstructorUsedError;
  String? get suspect => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Report? get report => throw _privateConstructorUsedError;
  Village? get village => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportOccurenceModelCopyWith<ReportOccurenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportOccurenceModelCopyWith<$Res> {
  factory $ReportOccurenceModelCopyWith(ReportOccurenceModel value,
          $Res Function(ReportOccurenceModel) then) =
      _$ReportOccurenceModelCopyWithImpl<$Res, ReportOccurenceModel>;
  @useResult
  $Res call(
      {int? id,
      int? reportsId,
      String? description,
      String? image,
      @JsonKey(name: 'who_was_affected') String? whoWasAffected,
      String? suspect,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Report? report,
      Village? village,
      Map<dynamic, dynamic>? details});

  $ReportCopyWith<$Res>? get report;
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class _$ReportOccurenceModelCopyWithImpl<$Res,
        $Val extends ReportOccurenceModel>
    implements $ReportOccurenceModelCopyWith<$Res> {
  _$ReportOccurenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reportsId = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? whoWasAffected = freezed,
    Object? suspect = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
    Object? report = freezed,
    Object? village = freezed,
    Object? details = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      whoWasAffected: freezed == whoWasAffected
          ? _value.whoWasAffected
          : whoWasAffected // ignore: cast_nullable_to_non_nullable
              as String?,
      suspect: freezed == suspect
          ? _value.suspect
          : suspect // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
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
abstract class _$$ReportOccurenceModelImplCopyWith<$Res>
    implements $ReportOccurenceModelCopyWith<$Res> {
  factory _$$ReportOccurenceModelImplCopyWith(_$ReportOccurenceModelImpl value,
          $Res Function(_$ReportOccurenceModelImpl) then) =
      __$$ReportOccurenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? reportsId,
      String? description,
      String? image,
      @JsonKey(name: 'who_was_affected') String? whoWasAffected,
      String? suspect,
      int? villageId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Report? report,
      Village? village,
      Map<dynamic, dynamic>? details});

  @override
  $ReportCopyWith<$Res>? get report;
  @override
  $VillageCopyWith<$Res>? get village;
}

/// @nodoc
class __$$ReportOccurenceModelImplCopyWithImpl<$Res>
    extends _$ReportOccurenceModelCopyWithImpl<$Res, _$ReportOccurenceModelImpl>
    implements _$$ReportOccurenceModelImplCopyWith<$Res> {
  __$$ReportOccurenceModelImplCopyWithImpl(_$ReportOccurenceModelImpl _value,
      $Res Function(_$ReportOccurenceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reportsId = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? whoWasAffected = freezed,
    Object? suspect = freezed,
    Object? villageId = freezed,
    Object? createdAt = freezed,
    Object? report = freezed,
    Object? village = freezed,
    Object? details = freezed,
  }) {
    return _then(_$ReportOccurenceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reportsId: freezed == reportsId
          ? _value.reportsId
          : reportsId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      whoWasAffected: freezed == whoWasAffected
          ? _value.whoWasAffected
          : whoWasAffected // ignore: cast_nullable_to_non_nullable
              as String?,
      suspect: freezed == suspect
          ? _value.suspect
          : suspect // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportOccurenceModelImpl implements _ReportOccurenceModel {
  _$ReportOccurenceModelImpl(
      {this.id,
      this.reportsId,
      this.description,
      this.image,
      @JsonKey(name: 'who_was_affected') this.whoWasAffected,
      this.suspect,
      this.villageId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.report,
      this.village,
      final Map<dynamic, dynamic>? details})
      : _details = details;

  factory _$ReportOccurenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportOccurenceModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? reportsId;
  @override
  final String? description;
  @override
  final String? image;
  @override
  @JsonKey(name: 'who_was_affected')
  final String? whoWasAffected;
  @override
  final String? suspect;
  @override
  final int? villageId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final Report? report;
  @override
  final Village? village;
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
  String toString() {
    return 'ReportOccurenceModel(id: $id, reportsId: $reportsId, description: $description, image: $image, whoWasAffected: $whoWasAffected, suspect: $suspect, villageId: $villageId, createdAt: $createdAt, report: $report, village: $village, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportOccurenceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reportsId, reportsId) ||
                other.reportsId == reportsId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.whoWasAffected, whoWasAffected) ||
                other.whoWasAffected == whoWasAffected) &&
            (identical(other.suspect, suspect) || other.suspect == suspect) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.village, village) || other.village == village) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reportsId,
      description,
      image,
      whoWasAffected,
      suspect,
      villageId,
      createdAt,
      report,
      village,
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportOccurenceModelImplCopyWith<_$ReportOccurenceModelImpl>
      get copyWith =>
          __$$ReportOccurenceModelImplCopyWithImpl<_$ReportOccurenceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportOccurenceModelImplToJson(
      this,
    );
  }
}

abstract class _ReportOccurenceModel implements ReportOccurenceModel {
  factory _ReportOccurenceModel(
      {final int? id,
      final int? reportsId,
      final String? description,
      final String? image,
      @JsonKey(name: 'who_was_affected') final String? whoWasAffected,
      final String? suspect,
      final int? villageId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final Report? report,
      final Village? village,
      final Map<dynamic, dynamic>? details}) = _$ReportOccurenceModelImpl;

  factory _ReportOccurenceModel.fromJson(Map<String, dynamic> json) =
      _$ReportOccurenceModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get reportsId;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(name: 'who_was_affected')
  String? get whoWasAffected;
  @override
  String? get suspect;
  @override
  int? get villageId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  Report? get report;
  @override
  Village? get village;
  @override
  Map<dynamic, dynamic>? get details;
  @override
  @JsonKey(ignore: true)
  _$$ReportOccurenceModelImplCopyWith<_$ReportOccurenceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
