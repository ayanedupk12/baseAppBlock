import 'package:avenueBellevue/dataProvider/model/response/cart_items_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order_details_model.g.dart';

@JsonSerializable()
class OrderDetailsModel{

  OrderDetailsModel({
    this.orderPrice,
    this.trayCharges,
    this.serviceCharges,
    this.tip,
    this.orderStatus,
    this.orderPlaceTime,
    this.orderPreparedTime,
    this.orderPickedTime,
    this.orderItems,
  });


  @JsonKey(name: 'orderPrice')
  double? orderPrice;
  @JsonKey(name: 'trayCharges')
  double? trayCharges;
  @JsonKey(name: 'serviceCharges')
  double? serviceCharges;
  @JsonKey(name: 'tip')
  double? tip;
  @JsonKey(name: 'orderStatus')
  String? orderStatus;
  @JsonKey(name: 'orderPlaceTime')
  int? orderPlaceTime;
  @JsonKey(name: 'orderPreparedTime')
  int? orderPreparedTime;
  @JsonKey(name: 'orderPickedTime')
  int? orderPickedTime;
  @JsonKey(name: 'orderItems')
  List<CartItemsModel>? orderItems;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsModelToJson(this);
}