// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardDetails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardDetailsModel _$CardDetailsModelFromJson(Map<String, dynamic> json) =>
    CardDetailsModel(
      cardId: json['cardId'] as String?,
      cardSuffix: json['cardSuffix'] as int?,
      cardIcon: json['cardIcon'] as String?,
      cardHolderName: json['cardHolderName'] as String?,
    );

Map<String, dynamic> _$CardDetailsModelToJson(CardDetailsModel instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'cardSuffix': instance.cardSuffix,
      'cardIcon': instance.cardIcon,
      'cardHolderName': instance.cardHolderName,
    };
