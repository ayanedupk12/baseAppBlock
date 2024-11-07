import 'package:json_annotation/json_annotation.dart';
part 'card_data_response_model.g.dart';

@JsonSerializable()
class CardDataResponseModel {
  CardDataResponseModel({
    this.cartTotalPrice,
    this.trayCharges,
    this.serviceCharges,
    this.tip,
  });

  @JsonKey(name: 'cartTotalPrice')
  double? cartTotalPrice;
  @JsonKey(name: 'trayCharges')
  double? trayCharges;
  @JsonKey(name: 'serviceCharges')
  double? serviceCharges;
  @JsonKey(name: 'tip')
  double? tip;
  
  factory CardDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CardDataResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardDataResponseModelToJson(this);

}