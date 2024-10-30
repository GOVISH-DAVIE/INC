import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipients.freezed.dart';
part 'recipients.g.dart';

@freezed
class Recipients with _$Recipients {
  factory Recipients({
    @JsonKey(name: 'type_of_relief') String? typeOfRelief,
    @JsonKey(name: 'recipient_name_1') String? recipientName1,
    @JsonKey(name: 'recipient_contact_details_1')
    String? recipientContactDetails1,
  }) = _Recipients;

  factory Recipients.fromJson(Map<String, dynamic> json) =>
      _$RecipientsFromJson(json);
}
