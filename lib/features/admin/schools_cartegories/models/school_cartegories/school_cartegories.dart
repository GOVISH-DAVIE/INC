import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_cartegories.freezed.dart';
part 'school_cartegories.g.dart';

@freezed
class SchoolCartegories with _$SchoolCartegories {
  factory SchoolCartegories({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _SchoolCartegories;

  factory SchoolCartegories.fromJson(Map<String, dynamic> json) =>
      _$SchoolCartegoriesFromJson(json);
}
