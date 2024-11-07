import 'package:json_annotation/json_annotation.dart';

part 'update_order_body_model.g.dart';
@JsonSerializable()
class  UpdateOrderBodyModel {
  UpdateOrderBodyModel({
    this.orderStatus,
    this.orderId,
    this.orderReview,
    this.orderRating,
  });

@JsonKey(name: 'orderStatus')
  String? orderStatus;
  @JsonKey(name: 'orderId')
  int? orderId;
  @JsonKey(name: 'orderReview')
  String? orderReview;
  @JsonKey(name: 'orderRating')
  double? orderRating;

  factory UpdateOrderBodyModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderBodyModelToJson(this);

}