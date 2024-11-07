// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpBodyModel _$SignUpBodyModelFromJson(Map<String, dynamic> json) =>
    SignUpBodyModel(
      email: json['email'] as String?,
      profilePicture: json['profilePicture'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      countryAlphaCode: json['countryAlphaCode'] as String?,
      socialId: json['socialId'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deviceId: json['deviceId'] as String?,
      deviceName: json['deviceName'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      cardDetails: json['cardDetails'] == null
          ? null
          : CardDetailsModel.fromJson(
              json['cardDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpBodyModelToJson(SignUpBodyModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'profilePicture': instance.profilePicture,
      'name': instance.name,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'countryAlphaCode': instance.countryAlphaCode,
      'socialId': instance.socialId,
      'fcmToken': instance.fcmToken,
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'location': instance.location,
      'cardDetails': instance.cardDetails,
    };
