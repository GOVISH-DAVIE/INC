import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_of_vaccine.dart';
import 'village.dart';

part 'vaccinces_response_model.freezed.dart';
part 'vaccinces_response_model.g.dart';

@freezed
class VaccincesResponseModel with _$VaccincesResponseModel {
  factory VaccincesResponseModel({
    int? id,
    @JsonKey(name: 'name_of_kid') String? nameOfKid,
    String? age,
    @JsonKey(name: 'name_of_mother') String? nameOfMother,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? vaccineTypeId,
    int? villageId,
    @JsonKey(name: 'type_of_vaccine') TypeOfVaccine? typeOfVaccine,
    Village? village,
  }) = _VaccincesResponseModel;

  factory VaccincesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VaccincesResponseModelFromJson(json);
}
