// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDataModel _$OrderDataModelFromJson(Map<String, dynamic> json) =>
    OrderDataModel(
      orderId: json['orderId'] as int?,
      orderPlaceTime: json['orderPlaceTime'] as int?,
      restaurantName: json['restaurantName'] as String?,
      restaurantCoverPicture: json['restaurantCoverPicture'] as String?,
      orderDescription: json['orderDescription'] as String?,
      orderProcessingTime: json['orderProcessingTime'] as String?,
      orderPrice: (json['orderPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderDataModelToJson(OrderDataModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderPlaceTime': instance.orderPlaceTime,
      'restaurantName': instance.restaurantName,
      'restaurantCoverPicture': instance.restaurantCoverPicture,
      'orderDescription': instance.orderDescription,
      'orderProcessingTime': instance.orderProcessingTime,
      'orderPrice': instance.orderPrice,
    };
