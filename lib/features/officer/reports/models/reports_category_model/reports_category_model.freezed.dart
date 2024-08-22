// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportsCategoryModel _$ReportsCategoryModelFromJson(Map<String, dynamic> json) {
  return _ReportsCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ReportsCategoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Field>? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ReportOccurrence')
  List<dynamic>? get reportOccurrence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportsCategoryModelCopyWith<ReportsCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsCategoryModelCopyWith<$Res> {
  factory $ReportsCategoryModelCopyWith(ReportsCategoryModel value,
          $Res Function(ReportsCategoryModel) then) =
      _$ReportsCategoryModelCopyWithImpl<$Res, ReportsCategoryModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      List<Field>? fields,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'ReportOccurrence') List<dynamic>? reportOccurrence});
}

/// @nodoc
class _$ReportsCategoryModelCopyWithImpl<$Res,
        $Val extends ReportsCategoryModel>
    implements $ReportsCategoryModelCopyWith<$Res> {
  _$ReportsCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? fields = freezed,
    Object? createdAt = freezed,
    Object? reportOccurrence = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reportOccurrence: freezed == reportOccurrence
          ? _value.reportOccurrence
          : reportOccurrence // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportsCategoryModelImplCopyWith<$Res>
    implements $ReportsCategoryModelCopyWith<$Res> {
  factory _$$ReportsCategoryModelImplCopyWith(_$ReportsCategoryModelImpl value,
          $Res Function(_$ReportsCategoryModelImpl) then) =
      __$$ReportsCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      List<Field>? fields,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'ReportOccurrence') List<dynamic>? reportOccurrence});
}

/// @nodoc
class __$$ReportsCategoryModelImplCopyWithImpl<$Res>
    extends _$ReportsCategoryModelCopyWithImpl<$Res, _$ReportsCategoryModelImpl>
    implements _$$ReportsCategoryModelImplCopyWith<$Res> {
  __$$ReportsCategoryModelImplCopyWithImpl(_$ReportsCategoryModelImpl _value,
      $Res Function(_$ReportsCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? fields = freezed,
    Object? createdAt = freezed,
    Object? reportOccurrence = freezed,
  }) {
    return _then(_$ReportsCategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reportOccurrence: freezed == reportOccurrence
          ? _value._reportOccurrence
          : reportOccurrence // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportsCategoryModelImpl implements _ReportsCategoryModel {
  _$ReportsCategoryModelImpl(
      {this.id,
      this.name,
      this.description,
      final List<Field>? fields,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'ReportOccurrence') final List<dynamic>? reportOccurrence})
      : _fields = fields,
        _reportOccurrence = reportOccurrence;

  factory _$ReportsCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportsCategoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  final List<Field>? _fields;
  @override
  List<Field>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  final List<dynamic>? _reportOccurrence;
  @override
  @JsonKey(name: 'ReportOccurrence')
  List<dynamic>? get reportOccurrence {
    final value = _reportOccurrence;
    if (value == null) return null;
    if (_reportOccurrence is EqualUnmodifiableListView)
      return _reportOccurrence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportsCategoryModel(id: $id, name: $name, description: $description, fields: $fields, createdAt: $createdAt, reportOccurrence: $reportOccurrence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportsCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._reportOccurrence, _reportOccurrence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_fields),
      createdAt,
      const DeepCollectionEquality().hash(_reportOccurrence));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportsCategoryModelImplCopyWith<_$ReportsCategoryModelImpl>
      get copyWith =>
          __$$ReportsCategoryModelImplCopyWithImpl<_$ReportsCategoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportsCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _ReportsCategoryModel implements ReportsCategoryModel {
  factory _ReportsCategoryModel(
      {final int? id,
      final String? name,
      final String? description,
      final List<Field>? fields,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'ReportOccurrence')
      final List<dynamic>? reportOccurrence}) = _$ReportsCategoryModelImpl;

  factory _ReportsCategoryModel.fromJson(Map<String, dynamic> json) =
      _$ReportsCategoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  List<Field>? get fields;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'ReportOccurrence')
  List<dynamic>? get reportOccurrence;
  @override
  @JsonKey(ignore: true)
  _$$ReportsCategoryModelImplCopyWith<_$ReportsCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
