// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuItemModel _$MenuItemModelFromJson(Map<String, dynamic> json) =>
    MenuItemModel(
      itemId: json['itemId'] as int?,
      itemName: json['itemName'] as String?,
      itemDescription: json['itemDescription'] as String?,
      itemImage: json['itemImage'] as String?,
      itemCartQuantity: json['itemCartQuantity'] as int?,
      processingTime: json['processingTime'] as String?,
      itemPrice: (json['itemPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MenuItemModelToJson(MenuItemModel instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemDescription': instance.itemDescription,
      'itemImage': instance.itemImage,
      'itemCartQuantity': instance.itemCartQuantity,
      'processingTime': instance.processingTime,
      'itemPrice': instance.itemPrice,
    };
