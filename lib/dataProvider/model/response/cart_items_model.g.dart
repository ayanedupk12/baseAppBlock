// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemsModel _$CartItemsModelFromJson(Map<String, dynamic> json) =>
    CartItemsModel(
      restaurantId: json['restaurantId'] as int?,
      itemId: json['itemId'] as int?,
      itemName: json['itemName'] as String?,
      itemDescription: json['itemDescription'] as String?,
      itemImage: json['itemImage'] as String?,
      itemQuantity: json['itemQuantity'] as int?,
      processingTime: json['processingTime'] as String?,
      itemPrice: (json['itemPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CartItemsModelToJson(CartItemsModel instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemDescription': instance.itemDescription,
      'itemImage': instance.itemImage,
      'itemQuantity': instance.itemQuantity,
      'processingTime': instance.processingTime,
      'itemPrice': instance.itemPrice,
    };
