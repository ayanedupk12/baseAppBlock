// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialDataResponseModel _$SocialDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    SocialDataResponseModel(
      name: json['name'] as String?,
      profilePicture: json['profilePicture'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      socialId: json['socialId'] as String?,
    );

Map<String, dynamic> _$SocialDataResponseModelToJson(
        SocialDataResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'socialId': instance.socialId,
    };
