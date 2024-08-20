import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_county.freezed.dart';
part 'sub_county.g.dart';

@freezed
class SubCounty with _$SubCounty {
  factory SubCounty({
    int? id,
    String? name,
    String? description,
    String? gprs,
    int? countyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _SubCounty;

  factory SubCounty.fromJson(Map<String, dynamic> json) =>
      _$SubCountyFromJson(json);
}
