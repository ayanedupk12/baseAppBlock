import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

import 'auth_model.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  DataModel({this.auth});

  @JsonKey(name: 'auth')
  AuthModel? auth;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
