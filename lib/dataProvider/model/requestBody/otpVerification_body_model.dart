import 'package:json_annotation/json_annotation.dart';
part 'otpVerification_body_model.g.dart';

@JsonSerializable()
class OtpVerificationBodyModel {
  OtpVerificationBodyModel({
    this.email,
    this.otp,
    this.otpType,
  });

  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'otp')
  String? otp;
  @JsonKey(name: 'otpType')
  String? otpType;

  factory OtpVerificationBodyModel.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtpVerificationBodyModelToJson(this);
}