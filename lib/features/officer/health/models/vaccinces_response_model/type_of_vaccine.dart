import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_of_vaccine.freezed.dart';
part 'type_of_vaccine.g.dart';

@freezed
class TypeOfVaccine with _$TypeOfVaccine {
  factory TypeOfVaccine({
    int? id,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _TypeOfVaccine;

  factory TypeOfVaccine.fromJson(Map<String, dynamic> json) =>
      _$TypeOfVaccineFromJson(json);
}
