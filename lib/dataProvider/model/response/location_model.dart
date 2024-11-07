
import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel{
  
  LocationModel({
    this.houseNo,
    this.floorNo,
    this.building,
  });


  @JsonKey(name: 'houseNo')
  String? houseNo;
  @JsonKey(name: 'floorNo')
  String? floorNo;
  @JsonKey(name: 'building')
  String? building;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}