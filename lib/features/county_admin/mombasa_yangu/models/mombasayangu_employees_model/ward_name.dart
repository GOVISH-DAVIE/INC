import 'package:freezed_annotation/freezed_annotation.dart';

part 'ward_name.freezed.dart';
part 'ward_name.g.dart';

@freezed
class WardName with _$WardName {
  factory WardName({
    int? id,
    String? name,
    String? code,
    int? subCountyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _WardName;

  factory WardName.fromJson(Map<String, dynamic> json) =>
      _$WardNameFromJson(json);
}
