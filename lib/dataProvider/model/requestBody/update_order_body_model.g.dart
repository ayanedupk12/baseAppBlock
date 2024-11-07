// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderBodyModel _$UpdateOrderBodyModelFromJson(
        Map<String, dynamic> json) =>
    UpdateOrderBodyModel(
      orderStatus: json['orderStatus'] as String?,
      orderId: json['orderId'] as int?,
      orderReview: json['orderReview'] as String?,
      orderRating: (json['orderRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpdateOrderBodyModelToJson(
        UpdateOrderBodyModel instance) =>
    <String, dynamic>{
      'orderStatus': instance.orderStatus,
      'orderId': instance.orderId,
      'orderReview': instance.orderReview,
      'orderRating': instance.orderRating,
    };
