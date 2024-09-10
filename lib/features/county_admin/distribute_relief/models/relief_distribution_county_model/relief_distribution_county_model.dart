import 'package:freezed_annotation/freezed_annotation.dart';

import 'ward.dart';

part 'relief_distribution_county_model.freezed.dart';
part 'relief_distribution_county_model.g.dart';

@freezed
class ReliefDistributionCountyModel with _$ReliefDistributionCountyModel {
  factory ReliefDistributionCountyModel({
    int? id,
    @JsonKey(name: 'relief_type') String? reliefType,
    int? quantity,
    String? type,
    int? wardId,
    @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
    Ward? ward,
  }) = _ReliefDistributionCountyModel;

  factory ReliefDistributionCountyModel.fromJson(Map<String, dynamic> json) =>
      _$ReliefDistributionCountyModelFromJson(json);
}
