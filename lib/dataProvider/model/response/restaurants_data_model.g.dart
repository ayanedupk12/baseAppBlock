// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantDataModel _$RestaurantDataModelFromJson(Map<String, dynamic> json) =>
    RestaurantDataModel(
      restaurants: (json['restaurants'] as List<dynamic>?)
          ?.map((e) => RestaurantsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RestaurantDataModelToJson(
        RestaurantDataModel instance) =>
    <String, dynamic>{
      'restaurants': instance.restaurants,
      'meta': instance.meta,
    };
