// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardDataResponseModel _$CardDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    CardDataResponseModel(
      cartTotalPrice: (json['cartTotalPrice'] as num?)?.toDouble(),
      trayCharges: (json['trayCharges'] as num?)?.toDouble(),
      serviceCharges: (json['serviceCharges'] as num?)?.toDouble(),
      tip: (json['tip'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CardDataResponseModelToJson(
        CardDataResponseModel instance) =>
    <String, dynamic>{
      'cartTotalPrice': instance.cartTotalPrice,
      'trayCharges': instance.trayCharges,
      'serviceCharges': instance.serviceCharges,
      'tip': instance.tip,
    };
