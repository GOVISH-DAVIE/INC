import 'package:freezed_annotation/freezed_annotation.dart';

import 'village.dart';

part 'auth_user_officer_model.freezed.dart';
part 'auth_user_officer_model.g.dart';

@freezed
class AuthUserOfficerModel with _$AuthUserOfficerModel {
  factory AuthUserOfficerModel({
    int? id,
    String? name,
    @JsonKey(name: 'service_number') int? serviceNumber,
    String? password,
    String? permmisions,
    @JsonKey(name: 'profile_pic') dynamic profilePic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    int? villageId,
    Village? village,
  }) = _AuthUserOfficerModel;

  factory AuthUserOfficerModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserOfficerModelFromJson(json);
}
