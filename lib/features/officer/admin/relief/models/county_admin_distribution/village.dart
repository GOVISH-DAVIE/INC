import 'package:freezed_annotation/freezed_annotation.dart';

import 'relief_distribution.dart';

part 'village.freezed.dart';
part 'village.g.dart';

@freezed
class Village with _$Village {
  factory Village({
    int? id,
    String? name,
    String? description,
    int? wardId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'Relief_distribution')
    List<ReliefDistribution>? reliefDistribution,
  }) = _Village;

  factory Village.fromJson(Map<String, dynamic> json) =>
      _$VillageFromJson(json);
}
