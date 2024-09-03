import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_model.freezed.dart';
part 'projects_model.g.dart';

@freezed
class ProjectsModel with _$ProjectsModel {
  factory ProjectsModel({
    int? id,
    @JsonKey(name: 'project_name') String? projectName,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'proposed_date') String? proposedDate,
    @JsonKey(name: 'contractor_name') String? contractorName,
    @JsonKey(name: 'project_status') String? projectStatus,
    String? image,
    String? alerts,
  }) = _ProjectsModel;

  factory ProjectsModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectsModelFromJson(json);
}
