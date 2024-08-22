import 'package:freezed_annotation/freezed_annotation.dart';

import 'report.dart';
import 'village.dart';

part 'report_occurence_model.freezed.dart';
part 'report_occurence_model.g.dart';

@freezed
class ReportOccurenceModel with _$ReportOccurenceModel {
  factory ReportOccurenceModel({
    int? id,
    int? reportsId,
    String? description,
    @JsonKey(name: 'who_was_affected') String? whoWasAffected,
    String? suspect,
    int? villageId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Report? report,
    Village? village,
     Map? details,
  }) = _ReportOccurenceModel;

  factory ReportOccurenceModel.fromJson(Map<String, dynamic> json) =>
      _$ReportOccurenceModelFromJson(json);
}
