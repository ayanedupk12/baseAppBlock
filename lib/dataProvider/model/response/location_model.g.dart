// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      houseNo: json['houseNo'] as String?,
      floorNo: json['floorNo'] as String?,
      building: json['building'] as String?,
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'houseNo': instance.houseNo,
      'floorNo': instance.floorNo,
      'building': instance.building,
    };
