// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_update_to_cart_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrUpdateCartBodyModel _$AddOrUpdateCartBodyModelFromJson(
        Map<String, dynamic> json) =>
    AddOrUpdateCartBodyModel(
      restaurantId: json['restaurantId'] as int?,
      itemId: json['itemId'] as int?,
      quantity: json['quantity'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AddOrUpdateCartBodyModelToJson(
        AddOrUpdateCartBodyModel instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'type': instance.type,
    };
