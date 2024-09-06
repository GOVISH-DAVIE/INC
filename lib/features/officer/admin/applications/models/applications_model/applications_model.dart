import 'package:freezed_annotation/freezed_annotation.dart';

import 'village.dart';

part 'applications_model.freezed.dart';
part 'applications_model.g.dart';

@freezed
class ApplicationsModel with _$ApplicationsModel {
  factory ApplicationsModel({
    int? id,
    @JsonKey(name: 'application_type') String? applicationType,
    @JsonKey(name: 'date_of_application') String? dateOfApplication,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    int? villageId,
    Village? village,
  }) = _ApplicationsModel;

  factory ApplicationsModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicationsModelFromJson(json);
}
