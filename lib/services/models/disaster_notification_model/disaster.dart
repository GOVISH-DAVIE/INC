import 'package:freezed_annotation/freezed_annotation.dart';

part 'disaster.freezed.dart';
part 'disaster.g.dart';

@freezed
class Disaster with _$Disaster {
  factory Disaster({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Disaster;

  factory Disaster.fromJson(Map<String, dynamic> json) =>
      _$DisasterFromJson(json);
}
