import 'package:json_annotation/json_annotation.dart';

part 'workingDay_model.g.dart';

@JsonSerializable()
class WorkingDayModel {
  WorkingDayModel({
    this.day,
    this.timing,
  });

  @JsonKey(name: 'day')
  String? day;
  @JsonKey(name: 'timing')
  String? timing;

  factory WorkingDayModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingDayModelFromJson(json);
  Map<String, dynamic> toJson() => _$WorkingDayModelToJson(this);
  
}