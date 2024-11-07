
import 'package:json_annotation/json_annotation.dart';
part 'restaurants_model.g.dart';

@JsonSerializable()
class RestaurantsModel{

  RestaurantsModel({
    this.restaurantId,
    this.restaurantName,
    this.restaurantCoverPicture,
    this.restaurantLocation,
    this.restaurantRating,
  });
  

  @JsonKey(name: 'restaurantId')
  int? restaurantId;
  @JsonKey(name: 'restaurantName')
  String? restaurantName;
  @JsonKey(name: 'restaurantCoverPicture')
  String? restaurantCoverPicture;
  @JsonKey(name: 'restaurantLocation')
  String? restaurantLocation;
  @JsonKey(name: 'restaurantRating')
  double? restaurantRating;

  factory RestaurantsModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantsModelToJson(this);
}
