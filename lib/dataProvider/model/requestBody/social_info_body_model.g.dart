// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_info_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialInfoBodyModel _$SocialInfoBodyModelFromJson(Map<String, dynamic> json) =>
    SocialInfoBodyModel(
      socialSite: json['socialSite'] as String?,
      socialToken: json['socialToken'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deviceId: json['deviceId'] as String?,
      deviceName: json['deviceName'] as String?,
      userIdentifier: json['userIdentifier'] as String?,
    );

Map<String, dynamic> _$SocialInfoBodyModelToJson(
        SocialInfoBodyModel instance) =>
    <String, dynamic>{
      'socialSite': instance.socialSite,
      'socialToken': instance.socialToken,
      'fcmToken': instance.fcmToken,
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'userIdentifier': instance.userIdentifier,
    };
