import 'package:freezed_annotation/freezed_annotation.dart';

part 'distribution_wards_model.freezed.dart';
part 'distribution_wards_model.g.dart';

@freezed
class DistributionWardsModel with _$DistributionWardsModel {
  factory DistributionWardsModel({
    int? id,
    String? name,
    String? code,
    int? subCountyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DistributionWardsModel;

  factory DistributionWardsModel.fromJson(Map<String, dynamic> json) =>
      _$DistributionWardsModelFromJson(json);
}
