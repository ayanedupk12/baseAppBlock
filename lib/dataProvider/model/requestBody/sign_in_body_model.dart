import 'package:json_annotation/json_annotation.dart';

part 'sign_in_body_model.g.dart';

@JsonSerializable()
class SignInBodyModel {
  SignInBodyModel(
      {required this.email,
      required this.password,
      required this.fcmToken,
      required this.deviceIdentifier});

  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'password')
  String password;
  @JsonKey(name: 'fcmToken')
  String fcmToken;
  @JsonKey(name: 'deviceIdentifier')
  String deviceIdentifier;

  factory SignInBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SignInBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignInBodyModelToJson(this);
}
