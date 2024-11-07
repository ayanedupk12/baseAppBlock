import 'package:json_annotation/json_annotation.dart';


part 'restaurant_review_model.g.dart';
@JsonSerializable()
class RestaurantReviewModel {
  RestaurantReviewModel({
    this.customerName,
    this.customerRating,
    this.customerReview,
  });

  @JsonKey(name: 'customerName')
  String? customerName;
  @JsonKey(name: 'customerRating')
  double? customerRating;
  @JsonKey(name: 'customerReview')
  String? customerReview;


  factory RestaurantReviewModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantReviewModelToJson(this);


}