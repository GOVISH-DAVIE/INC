import 'package:freezed_annotation/freezed_annotation.dart';

import 'field.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  factory Report({
    int? id,
    String? name,
    String? description,
    List<Field>? fields,
    @JsonKey(name: 'has_image') String? hasImage,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
