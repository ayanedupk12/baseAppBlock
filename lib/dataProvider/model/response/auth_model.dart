import 'package:avenueBellevue/dataProvider/model/response/cardDetails_model.dart';
import 'package:avenueBellevue/dataProvider/model/response/location_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel {
  AuthModel(
      {required this.jwt,
      this.name,
      this.profile,
      this.phoneNumber,
      this.email,
      this.location,
      this.cardDetails,
      this.countryAlphaCode,
      });

  @JsonKey(name: 'jwt')
  String jwt;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profile')
  String? profile;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'countryAlphaCode')
  String? countryAlphaCode;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'location')
  LocationModel? location;
  @JsonKey(name: 'cardDetails')
  CardDetailsModel? cardDetails;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
