






import 'package:avenueBellevue/dataProvider/model/response/cardDetails_model.dart';
import 'package:avenueBellevue/dataProvider/model/response/location_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sign_up_body_model.g.dart';

@JsonSerializable()
class SignUpBodyModel {
  SignUpBodyModel({
    this.email,
    this.profilePicture,
    this.name,
    this.password,
    this.phoneNumber,
    this.countryAlphaCode,
    this.socialId,
    this.fcmToken,
    this.deviceId,
    this.deviceName,
    this.location,
    this.cardDetails,
  });

@JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'profilePicture')
  String? profilePicture;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'countryAlphaCode')
  String? countryAlphaCode;
  @JsonKey(name: 'socialId')
  String? socialId;
  @JsonKey(name: 'fcmToken')
  String? fcmToken;
  @JsonKey(name: 'deviceId')
  String? deviceId;
  @JsonKey(name: 'deviceName')
  String? deviceName;
  @JsonKey(name: 'location')
  LocationModel? location;
  @JsonKey(name: 'cardDetails')
  CardDetailsModel? cardDetails;


 factory SignUpBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpBodyModelToJson(this);

}