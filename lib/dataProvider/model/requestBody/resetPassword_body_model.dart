import 'package:json_annotation/json_annotation.dart';
part 'resetPassword_body_model.g.dart';

@JsonSerializable()
class ResetPasswordBodyModel {
  ResetPasswordBodyModel({
    this.password,
    this.email,
  });

  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'email')
  String? email;

  factory ResetPasswordBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordBodyModelToJson(this);
}