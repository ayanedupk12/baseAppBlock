import 'package:json_annotation/json_annotation.dart';

part 'cart_items_model.g.dart';

@JsonSerializable()
class CartItemsModel {
  CartItemsModel({
    this.restaurantId,
    this.itemId,
    this.itemName,
    this.itemDescription,
    this.itemImage,
    this.itemQuantity,
    this.processingTime,
    this.itemPrice,
  });

  @JsonKey(name: 'restaurantId')
  int? restaurantId;
  @JsonKey(name: 'itemId')
  int? itemId;
  @JsonKey(name: 'itemName')
  String? itemName;
  @JsonKey(name: 'itemDescription')
  String? itemDescription;
  @JsonKey(name: 'itemImage')
  String? itemImage;
  @JsonKey(name: 'itemQuantity')
  int? itemQuantity;
  @JsonKey(name: 'processingTime')
  String? processingTime;
  @JsonKey(name: 'itemPrice')
  double? itemPrice;

  factory CartItemsModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemsModelToJson(this);
}