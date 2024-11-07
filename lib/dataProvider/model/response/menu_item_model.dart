import 'package:json_annotation/json_annotation.dart';


part 'menu_item_model.g.dart';
@JsonSerializable()
class MenuItemModel {
  MenuItemModel({
    this.itemId,
    this.itemName,
    this.itemDescription,
    this.itemImage,
    this.itemCartQuantity,
    this.processingTime,
    this.itemPrice,
  });


  @JsonKey(name: 'itemId')
  int? itemId;
  @JsonKey(name: 'itemName')
  String? itemName;
  @JsonKey(name: 'itemDescription')
  String? itemDescription;
  @JsonKey(name: 'itemImage')
  String? itemImage;
  @JsonKey(name: 'itemCartQuantity')
  int? itemCartQuantity;
  @JsonKey(name: 'processingTime')
  String? processingTime;
  @JsonKey(name: 'itemPrice')
  double? itemPrice;

   factory MenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$MenuItemModelToJson(this);


}