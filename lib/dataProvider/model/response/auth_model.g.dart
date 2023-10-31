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
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'jwt': instance.jwt,
      'name': instance.name,
      'profile': instance.profile,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
