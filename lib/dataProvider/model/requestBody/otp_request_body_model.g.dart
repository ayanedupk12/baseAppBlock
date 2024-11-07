// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpRequestBodyModel _$OtpRequestBodyModelFromJson(Map<String, dynamic> json) =>
    OtpRequestBodyModel(
      email: json['email'] as String?,
      otpType: json['otpType'] as String?,
    );

Map<String, dynamic> _$OtpRequestBodyModelToJson(
        OtpRequestBodyModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otpType': instance.otpType,
    };
