// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInBodyModel _$SignInBodyModelFromJson(Map<String, dynamic> json) =>
    SignInBodyModel(
      email: json['email'] as String,
      password: json['password'] as String,
      fcmToken: json['fcmToken'] as String,
      deviceIdentifier: json['deviceIdentifier'] as String,
    );

Map<String, dynamic> _$SignInBodyModelToJson(SignInBodyModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fcmToken': instance.fcmToken,
      'deviceIdentifier': instance.deviceIdentifier,
    };
