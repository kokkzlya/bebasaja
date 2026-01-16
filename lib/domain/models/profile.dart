import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  @JsonKey(name: 'full_name')
  final String fullName;

  @JsonValue('')
  final String provinces;

  @JsonValue('')
  final String regency;

  @JsonValue('')
  final String address;

  Profile({
    required this.fullName,
    required this.provinces,
    required this.regency,
    required this.address,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
