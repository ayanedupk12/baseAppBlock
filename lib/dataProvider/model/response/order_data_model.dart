import 'package:json_annotation/json_annotation.dart';

part 'order_data_model.g.dart';

@JsonSerializable()
class OrderDataModel{
  OrderDataModel({
    this.orderId,
    this.orderPlaceTime,
    this.restaurantName,
    this.restaurantCoverPicture,
    this.orderDescription,
    this.orderProcessingTime,
    this.orderPrice,
  });

   @JsonKey(name: 'orderId')
  int? orderId;
  @JsonKey(name: 'orderPlaceTime')
  int? orderPlaceTime;
  @JsonKey(name: 'restaurantName')
  String? restaurantName;
  @JsonKey(name: 'restaurantCoverPicture')
  String? restaurantCoverPicture;
  @JsonKey(name: 'orderDescription')
  String? orderDescription;
  @JsonKey(name: 'orderProcessingTime')
  String? orderProcessingTime;
  @JsonKey(name: 'orderPrice')
  double? orderPrice;

  factory OrderDataModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDataModelToJson(this);

}