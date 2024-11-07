
import 'package:avenueBellevue/dataProvider/model/response/card_data_response_model.dart';
import 'package:avenueBellevue/dataProvider/model/response/cart_items_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_data_model.g.dart';

@JsonSerializable()
class CartDataModel{
  CartDataModel({
   this.cartData,
   this.cartItems,
  });

  @JsonKey(name: 'cartData')
  CardDataResponseModel? cartData;

  @JsonKey(name: 'cartItems')
  List<CartItemsModel>? cartItems;

  factory CartDataModel.fromJson(Map<String, dynamic> json) =>
      _$CartDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartDataModelToJson(this);
}