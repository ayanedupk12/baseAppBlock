// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantsModel _$RestaurantsModelFromJson(Map<String, dynamic> json) =>
    RestaurantsModel(
      restaurantId: json['restaurantId'] as int?,
      restaurantName: json['restaurantName'] as String?,
      restaurantCoverPicture: json['restaurantCoverPicture'] as String?,
      restaurantLocation: json['restaurantLocation'] as String?,
      restaurantRating: (json['restaurantRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RestaurantsModelToJson(RestaurantsModel instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'restaurantName': instance.restaurantName,
      'restaurantCoverPicture': instance.restaurantCoverPicture,
      'restaurantLocation': instance.restaurantLocation,
      'restaurantRating': instance.restaurantRating,
    };
