import 'package:freezed_annotation/freezed_annotation.dart';

import 'village.dart';

part 'birth_model.freezed.dart';
part 'birth_model.g.dart';

@freezed
class BirthModel with _$BirthModel {
  factory BirthModel({
    int? id,
    String? name,
    String? parent,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? villageId,
    Village? village,
  }) = _BirthModel;

  factory BirthModel.fromJson(Map<String, dynamic> json) =>
      _$BirthModelFromJson(json);
}
