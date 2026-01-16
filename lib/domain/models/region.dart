import 'package:json_annotation/json_annotation.dart';

part 'region.g.dart';

@JsonSerializable()
class Region {
  final String code;
  final String name;

  Region({
    required this.code,
    required this.name,
  });

  factory Region.fromJson(Map<String, dynamic> json) =>
      _$RegionFromJson(json);

  Map<String, dynamic> toJson() => _$RegionToJson(this);
}
