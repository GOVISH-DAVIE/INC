import 'package:freezed_annotation/freezed_annotation.dart';

part 'county.freezed.dart';
part 'county.g.dart';

@freezed
class County with _$County {
  factory County({
    int? id,
    String? name,
    String? code,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _County;

  factory County.fromJson(Map<String, dynamic> json) => _$CountyFromJson(json);
}
