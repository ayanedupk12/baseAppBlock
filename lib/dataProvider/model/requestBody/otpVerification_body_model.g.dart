// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otpVerification_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerificationBodyModel _$OtpVerificationBodyModelFromJson(
        Map<String, dynamic> json) =>
    OtpVerificationBodyModel(
      email: json['email'] as String?,
      otp: json['otp'] as String?,
      otpType: json['otpType'] as String?,
    );

Map<String, dynamic> _$OtpVerificationBodyModelToJson(
        OtpVerificationBodyModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
      'otpType': instance.otpType,
    };
