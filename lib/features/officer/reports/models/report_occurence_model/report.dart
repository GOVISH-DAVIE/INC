import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  factory Report({
    int? id,
    String? name,
    String? description, 
    Map? details,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
