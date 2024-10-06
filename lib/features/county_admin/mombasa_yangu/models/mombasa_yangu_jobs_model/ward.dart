import 'package:freezed_annotation/freezed_annotation.dart';

part 'ward.freezed.dart';
part 'ward.g.dart';

@freezed
class Ward with _$Ward {
  factory Ward({
    int? id,
    String? name,
    String? code,
    int? subCountyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Ward;

  factory Ward.fromJson(Map<String, dynamic> json) => _$WardFromJson(json);
}
