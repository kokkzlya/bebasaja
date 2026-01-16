import 'package:json_annotation/json_annotation.dart';

part 'user_cred.g.dart';

@JsonSerializable()
class UserCred {
  @JsonKey(name: 'user_id')
  final String userId;

  final String password;

  UserCred({
    required this.userId,
    required this.password,
  });

  factory UserCred.fromJson(Map<String, dynamic> json) =>
      _$UserCredFromJson(json);

  Map<String, dynamic> toJson() => _$UserCredToJson(this);
}
