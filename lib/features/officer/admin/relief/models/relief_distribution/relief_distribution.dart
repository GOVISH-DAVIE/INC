import 'package:freezed_annotation/freezed_annotation.dart';

import 'area.dart';

part 'relief_distribution.freezed.dart';
part 'relief_distribution.g.dart';

@freezed
class ReliefDistribution with _$ReliefDistribution {
  factory ReliefDistribution({
    int? id,
    @JsonKey(name: 'type_of_relief') String? typeOfRelief,
    @JsonKey(name: 'quantity_distributed') String? quantityDistributed,
    @JsonKey(name: 'number_of_people_given') String? numberOfPeopleGiven,
    int? villageId,
    String? relief_date,
    Area? area,
  }) = _ReliefDistribution;

  factory ReliefDistribution.fromJson(Map<String, dynamic> json) =>
      _$ReliefDistributionFromJson(json);
}
