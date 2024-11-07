import 'package:json_annotation/json_annotation.dart';

part 'add_or_update_to_cart_body_model.g.dart';

@JsonSerializable()
class AddOrUpdateCartBodyModel {
  AddOrUpdateCartBodyModel({
    this.restaurantId,
    this.itemId,
    this.quantity,
    this.type,
  });

  @JsonKey(name: 'restaurantId')
  int? restaurantId;
  @JsonKey(name: 'itemId')
  int? itemId;
  @JsonKey(name: 'quantity')
  int? quantity;
  @JsonKey(name: 'type')
  String? type;


   factory AddOrUpdateCartBodyModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrUpdateCartBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrUpdateCartBodyModelToJson(this);
}
