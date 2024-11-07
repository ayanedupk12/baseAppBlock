import 'package:json_annotation/json_annotation.dart';

part 'sign_in_body_model.g.dart';

@JsonSerializable()
class SignInBodyModel {
  SignInBodyModel(
      {required this.email,
      required this.password,
      required this.fcmToken,
      required this.deviceId,
      required this.deviceName,
      });

  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'password')
  String password;
  @JsonKey(name: 'fcmToken')
  String fcmToken;
  @JsonKey(name: 'deviceId')
  String deviceId;
   @JsonKey(name: 'deviceName')
  String deviceName;


  factory SignInBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SignInBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignInBodyModelToJson(this);
}
