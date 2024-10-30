import 'package:freezed_annotation/freezed_annotation.dart';

import 'recipients.dart';

part 'distribution_recipient.freezed.dart';
part 'distribution_recipient.g.dart';

@freezed
class DistributionRecipient with _$DistributionRecipient {
  factory DistributionRecipient({
    int? id,
    Map<String, dynamic>? recipients,
    @JsonKey(name: 'relief_distributionId') int? reliefDistributionId,
    @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
  }) = _DistributionRecipient;

  factory DistributionRecipient.fromJson(Map<String, dynamic> json) =>
      _$DistributionRecipientFromJson(json);
}
