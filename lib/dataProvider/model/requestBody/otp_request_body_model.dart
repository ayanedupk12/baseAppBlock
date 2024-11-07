import 'package:json_annotation/json_annotation.dart';

part 'otp_request_body_model.g.dart';

@JsonSerializable()
class OtpRequestBodyModel {
  OtpRequestBodyModel({
    this.email,
    this.otpType,
  });

  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'otpType')
  String? otpType;

  factory OtpRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtpRequestBodyModelToJson(this);

}
