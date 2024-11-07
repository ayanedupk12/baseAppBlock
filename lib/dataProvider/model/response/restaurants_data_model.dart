import 'package:avenueBellevue/dataProvider/model/response/meta_model.dart';
import 'package:avenueBellevue/dataProvider/model/response/restaurants_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurants_data_model.g.dart';

@JsonSerializable()
class RestaurantDataModel {
  RestaurantDataModel({
    this.restaurants,
    this.meta,
  });

  @JsonKey(name: 'restaurants')
  List<RestaurantsModel>? restaurants;
  @JsonKey(name: 'meta')
  MetaModel? meta;

  factory RestaurantDataModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantDataModelToJson(this);
}