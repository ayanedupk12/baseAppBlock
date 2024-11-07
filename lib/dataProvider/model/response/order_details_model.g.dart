// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    OrderDetailsModel(
      orderPrice: (json['orderPrice'] as num?)?.toDouble(),
      trayCharges: (json['trayCharges'] as num?)?.toDouble(),
      serviceCharges: (json['serviceCharges'] as num?)?.toDouble(),
      tip: (json['tip'] as num?)?.toDouble(),
      orderStatus: json['orderStatus'] as String?,
      orderPlaceTime: json['orderPlaceTime'] as int?,
      orderPreparedTime: json['orderPreparedTime'] as int?,
      orderPickedTime: json['orderPickedTime'] as int?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => CartItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailsModelToJson(OrderDetailsModel instance) =>
    <String, dynamic>{
      'orderPrice': instance.orderPrice,
      'trayCharges': instance.trayCharges,
      'serviceCharges': instance.serviceCharges,
      'tip': instance.tip,
      'orderStatus': instance.orderStatus,
      'orderPlaceTime': instance.orderPlaceTime,
      'orderPreparedTime': instance.orderPreparedTime,
      'orderPickedTime': instance.orderPickedTime,
      'orderItems': instance.orderItems,
    };
