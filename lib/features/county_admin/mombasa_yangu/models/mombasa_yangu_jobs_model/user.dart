import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    int? id,
    String? name,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'date_and_time') DateTime? dateAndTime,
    int? wardId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
