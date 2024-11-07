import 'package:json_annotation/json_annotation.dart';

part 'social_data_response_model.g.dart';

@JsonSerializable()
class SocialDataResponseModel {
  SocialDataResponseModel({
    this.name,
    this.profilePicture,
    this.phoneNumber,
    this.email,
    this.socialId,
  });

  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profilePicture')
  String? profilePicture;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'socialId')
  String? socialId;

  factory SocialDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SocialDataResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocialDataResponseModelToJson(this);
}