import 'package:json_annotation/json_annotation.dart';

part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel {
  AuthModel(
      {required this.jwt,
      this.name,
      this.profile,
      this.phoneNumber,
      this.email});

  @JsonKey(name: 'jwt')
  String jwt;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profile')
  String? profile;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'email')
  String? email;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
