// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      jwt: json['jwt'] as String,
      name: json['name'] as String?,
      profile: json['profile'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      cardDetails: json['cardDetails'] == null
          ? null
          : CardDetailsModel.fromJson(
              json['cardDetails'] as Map<String, dynamic>),
      countryAlphaCode: json['countryAlphaCode'] as String?,
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'jwt': instance.jwt,
      'name': instance.name,
      'profile': instance.profile,
      'phoneNumber': instance.phoneNumber,
      'countryAlphaCode': instance.countryAlphaCode,
      'email': instance.email,
      'location': instance.location,
      'cardDetails': instance.cardDetails,
    };
