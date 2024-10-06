import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
import 'ward.dart';

part 'mombasa_yangu_jobs_model.freezed.dart';
part 'mombasa_yangu_jobs_model.g.dart';

@freezed
class MombasaYanguJobsModel with _$MombasaYanguJobsModel {
  factory MombasaYanguJobsModel({
    int? id,
    String? job,
    @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
    int? mombasaYanguId,
    int? wardId,
    User? user,
    Ward? ward,
  }) = _MombasaYanguJobsModel;

  factory MombasaYanguJobsModel.fromJson(Map<String, dynamic> json) =>
      _$MombasaYanguJobsModelFromJson(json);
}
