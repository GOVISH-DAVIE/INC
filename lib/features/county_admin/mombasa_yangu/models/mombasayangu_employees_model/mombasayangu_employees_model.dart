import 'package:freezed_annotation/freezed_annotation.dart';

import 'ward_name.dart';

part 'mombasayangu_employees_model.freezed.dart';
part 'mombasayangu_employees_model.g.dart';

@freezed
class MombasayanguEmployeesModel with _$MombasayanguEmployeesModel {
  factory MombasayanguEmployeesModel({
    int? id,
    String? name,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
    int? wardId,
    @JsonKey(name: 'ward_name') WardName? wardName,
  }) = _MombasayanguEmployeesModel;

  factory MombasayanguEmployeesModel.fromJson(Map<String, dynamic> json) =>
      _$MombasayanguEmployeesModelFromJson(json);
}
