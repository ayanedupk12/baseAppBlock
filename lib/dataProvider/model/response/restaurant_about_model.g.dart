// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_about_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantAboutModel _$RestaurantAboutModelFromJson(
        Map<String, dynamic> json) =>
    RestaurantAboutModel(
      restaurantEmail: json['restaurantEmail'] as String?,
      restaurantPhoneNumber: json['restaurantPhoneNumber'] as String?,
      restaurantWorkingDays: (json['restaurantWorkingDays'] as List<dynamic>?)
          ?.map((e) => WorkingDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantAboutModelToJson(
        RestaurantAboutModel instance) =>
    <String, dynamic>{
      'restaurantEmail': instance.restaurantEmail,
      'restaurantPhoneNumber': instance.restaurantPhoneNumber,
      'restaurantWorkingDays': instance.restaurantWorkingDays,
    };
