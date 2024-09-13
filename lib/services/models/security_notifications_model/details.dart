import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  factory Details({
    String? reportsId,
    String? villageId,
    @JsonKey(name: 'date_and_time') String? dateAndTime,
    @JsonKey(name: 'what_happened') String? whatHappened,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}
