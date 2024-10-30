import 'package:freezed_annotation/freezed_annotation.dart';

import 'village.dart';

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
    @JsonKey(name: 'Village') List<Village>? village,
  }) = _Ward;

  factory Ward.fromJson(Map<String, dynamic> json) => _$WardFromJson(json);
}
