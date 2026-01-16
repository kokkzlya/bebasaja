// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
  fullName: json['full_name'] as String,
  provinces: json['provinces'] as String,
  regency: json['regency'] as String,
  address: json['address'] as String,
);

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
  'full_name': instance.fullName,
  'provinces': instance.provinces,
  'regency': instance.regency,
  'address': instance.address,
};
