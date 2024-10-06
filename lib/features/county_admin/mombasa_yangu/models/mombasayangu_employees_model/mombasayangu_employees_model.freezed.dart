// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mombasayangu_employees_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MombasayanguEmployeesModel _$MombasayanguEmployeesModelFromJson(
    Map<String, dynamic> json) {
  return _MombasayanguEmployeesModel.fromJson(json);
}

/// @nodoc
mixin _$MombasayanguEmployeesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime => throw _privateConstructorUsedError;
  int? get wardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ward_name')
  WardName? get wardName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MombasayanguEmployeesModelCopyWith<MombasayanguEmployeesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MombasayanguEmployeesModelCopyWith<$Res> {
  factory $MombasayanguEmployeesModelCopyWith(MombasayanguEmployeesModel value,
          $Res Function(MombasayanguEmployeesModel) then) =
      _$MombasayanguEmployeesModelCopyWithImpl<$Res,
          MombasayanguEmployeesModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
      int? wardId,
      @JsonKey(name: 'ward_name') WardName? wardName});

  $WardNameCopyWith<$Res>? get wardName;
}

/// @nodoc
class _$MombasayanguEmployeesModelCopyWithImpl<$Res,
        $Val extends MombasayanguEmployeesModel>
    implements $MombasayanguEmployeesModelCopyWith<$Res> {
  _$MombasayanguEmployeesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userType = freezed,
    Object? dateAndTime = freezed,
    Object? wardId = freezed,
    Object? wardName = freezed,
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
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardName: freezed == wardName
          ? _value.wardName
          : wardName // ignore: cast_nullable_to_non_nullable
              as WardName?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WardNameCopyWith<$Res>? get wardName {
    if (_value.wardName == null) {
      return null;
    }

    return $WardNameCopyWith<$Res>(_value.wardName!, (value) {
      return _then(_value.copyWith(wardName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MombasayanguEmployeesModelImplCopyWith<$Res>
    implements $MombasayanguEmployeesModelCopyWith<$Res> {
  factory _$$MombasayanguEmployeesModelImplCopyWith(
          _$MombasayanguEmployeesModelImpl value,
          $Res Function(_$MombasayanguEmployeesModelImpl) then) =
      __$$MombasayanguEmployeesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
      int? wardId,
      @JsonKey(name: 'ward_name') WardName? wardName});

  @override
  $WardNameCopyWith<$Res>? get wardName;
}

/// @nodoc
class __$$MombasayanguEmployeesModelImplCopyWithImpl<$Res>
    extends _$MombasayanguEmployeesModelCopyWithImpl<$Res,
        _$MombasayanguEmployeesModelImpl>
    implements _$$MombasayanguEmployeesModelImplCopyWith<$Res> {
  __$$MombasayanguEmployeesModelImplCopyWithImpl(
      _$MombasayanguEmployeesModelImpl _value,
      $Res Function(_$MombasayanguEmployeesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userType = freezed,
    Object? dateAndTime = freezed,
    Object? wardId = freezed,
    Object? wardName = freezed,
  }) {
    return _then(_$MombasayanguEmployeesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardName: freezed == wardName
          ? _value.wardName
          : wardName // ignore: cast_nullable_to_non_nullable
              as WardName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MombasayanguEmployeesModelImpl implements _MombasayanguEmployeesModel {
  _$MombasayanguEmployeesModelImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'user_type') this.userType,
      @JsonKey(name: 'date_and_time') this.dateAndTime,
      this.wardId,
      @JsonKey(name: 'ward_name') this.wardName});

  factory _$MombasayanguEmployeesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MombasayanguEmployeesModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  @JsonKey(name: 'date_and_time')
  final DateTime? dateAndTime;
  @override
  final int? wardId;
  @override
  @JsonKey(name: 'ward_name')
  final WardName? wardName;

  @override
  String toString() {
    return 'MombasayanguEmployeesModel(id: $id, name: $name, userType: $userType, dateAndTime: $dateAndTime, wardId: $wardId, wardName: $wardName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MombasayanguEmployeesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime) &&
            (identical(other.wardId, wardId) || other.wardId == wardId) &&
            (identical(other.wardName, wardName) ||
                other.wardName == wardName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, userType, dateAndTime, wardId, wardName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MombasayanguEmployeesModelImplCopyWith<_$MombasayanguEmployeesModelImpl>
      get copyWith => __$$MombasayanguEmployeesModelImplCopyWithImpl<
          _$MombasayanguEmployeesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MombasayanguEmployeesModelImplToJson(
      this,
    );
  }
}

abstract class _MombasayanguEmployeesModel
    implements MombasayanguEmployeesModel {
  factory _MombasayanguEmployeesModel(
          {final int? id,
          final String? name,
          @JsonKey(name: 'user_type') final String? userType,
          @JsonKey(name: 'date_and_time') final DateTime? dateAndTime,
          final int? wardId,
          @JsonKey(name: 'ward_name') final WardName? wardName}) =
      _$MombasayanguEmployeesModelImpl;

  factory _MombasayanguEmployeesModel.fromJson(Map<String, dynamic> json) =
      _$MombasayanguEmployeesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  @JsonKey(name: 'date_and_time')
  DateTime? get dateAndTime;
  @override
  int? get wardId;
  @override
  @JsonKey(name: 'ward_name')
  WardName? get wardName;
  @override
  @JsonKey(ignore: true)
  _$$MombasayanguEmployeesModelImplCopyWith<_$MombasayanguEmployeesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
