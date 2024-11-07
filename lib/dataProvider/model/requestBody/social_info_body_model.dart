import 'package:json_annotation/json_annotation.dart';

part 'social_info_body_model.g.dart';


@JsonSerializable()
class SocialInfoBodyModel {
  SocialInfoBodyModel({
    this.socialSite,
    this.socialToken,
    this.fcmToken,
    this.deviceId,
    this.deviceName,
    this.userIdentifier,
  });

  @JsonKey(name: 'socialSite')
  String? socialSite;
  @JsonKey(name: 'socialToken')
  String? socialToken;
  @JsonKey(name: 'fcmToken')
  String? fcmToken;
  @JsonKey(name: 'deviceId')
  String? deviceId;
  @JsonKey(name: 'deviceName')
  String? deviceName;
  @JsonKey(name: 'userIdentifier')
  String? userIdentifier;

  factory SocialInfoBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SocialInfoBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocialInfoBodyModelToJson(this);
}
