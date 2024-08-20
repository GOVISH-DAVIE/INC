import 'package:freezed_annotation/freezed_annotation.dart';

part 'ethnicity.freezed.dart';
part 'ethnicity.g.dart';

@freezed
class Ethnicity with _$Ethnicity {
  factory Ethnicity({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Ethnicity;

  factory Ethnicity.fromJson(Map<String, dynamic> json) =>
      _$EthnicityFromJson(json);
}
