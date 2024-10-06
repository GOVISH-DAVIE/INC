import 'package:freezed_annotation/freezed_annotation.dart';

part 'receive_relief_model.freezed.dart';
part 'receive_relief_model.g.dart';

@freezed
class ReceiveReliefModel with _$ReceiveReliefModel {
  factory ReceiveReliefModel({
    int? id,
    @JsonKey(name: 'relief_type') String? reliefType,
    int? quantity,
    String? type,
    String? source,
    @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
  }) = _ReceiveReliefModel;

  factory ReceiveReliefModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiveReliefModelFromJson(json);
}
