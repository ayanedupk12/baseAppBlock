// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resetPassword_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordBodyModel _$ResetPasswordBodyModelFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordBodyModel(
      password: json['password'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ResetPasswordBodyModelToJson(
        ResetPasswordBodyModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
    };
