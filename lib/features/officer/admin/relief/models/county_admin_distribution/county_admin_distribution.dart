import 'package:freezed_annotation/freezed_annotation.dart';

import 'ward.dart';

part 'county_admin_distribution.freezed.dart';
part 'county_admin_distribution.g.dart';

@freezed
class CountyAdminDistribution with _$CountyAdminDistribution {
  factory CountyAdminDistribution({
    int? id,
    @JsonKey(name: 'relief_type') String? reliefType,
    int? quantity,
    String? type,
    int? wardId,
    @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
    Ward? ward,
  }) = _CountyAdminDistribution;

  factory CountyAdminDistribution.fromJson(Map<String, dynamic> json) =>
      _$CountyAdminDistributionFromJson(json);
}
