import 'package:avenueBellevue/dataProvider/model/response/workingDay_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_about_model.g.dart';

@JsonSerializable()
class RestaurantAboutModel {
  RestaurantAboutModel({
    this.restaurantEmail,
    this.restaurantPhoneNumber,
    this.restaurantWorkingDays,
  });

  @JsonKey(name: 'restaurantEmail')
  String? restaurantEmail;
  @JsonKey(name: 'restaurantPhoneNumber')
  String? restaurantPhoneNumber;
  @JsonKey(name: 'restaurantWorkingDays')
  List<WorkingDayModel>? restaurantWorkingDays;

  factory RestaurantAboutModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantAboutModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$RestaurantAboutModelToJson(this);

}