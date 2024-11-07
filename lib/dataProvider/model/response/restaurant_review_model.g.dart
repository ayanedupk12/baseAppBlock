// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantReviewModel _$RestaurantReviewModelFromJson(
        Map<String, dynamic> json) =>
    RestaurantReviewModel(
      customerName: json['customerName'] as String?,
      customerRating: (json['customerRating'] as num?)?.toDouble(),
      customerReview: json['customerReview'] as String?,
    );

Map<String, dynamic> _$RestaurantReviewModelToJson(
        RestaurantReviewModel instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'customerRating': instance.customerRating,
      'customerReview': instance.customerReview,
    };
