import 'package:freezed_annotation/freezed_annotation.dart';

import 'field.dart';

part 'reports_category_model.freezed.dart';
part 'reports_category_model.g.dart';

@freezed
class ReportsCategoryModel with _$ReportsCategoryModel {
  factory ReportsCategoryModel({
    int? id,
    String? name,
    String? description,
    List<Field>? fields,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'ReportOccurrence') List<dynamic>? reportOccurrence,
  }) = _ReportsCategoryModel;

  factory ReportsCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ReportsCategoryModelFromJson(json);
}
