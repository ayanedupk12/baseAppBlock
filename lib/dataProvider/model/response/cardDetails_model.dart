
import 'package:json_annotation/json_annotation.dart';
part 'cardDetails_model.g.dart';
@JsonSerializable()
class CardDetailsModel{
    CardDetailsModel({
    this.cardId,
    this.cardSuffix,
    this.cardIcon,
    this.cardHolderName,
    });
   
   @JsonKey(name: 'cardId')
  String? cardId;
  @JsonKey(name: 'cardSuffix')
  int? cardSuffix;
  @JsonKey(name: 'cardIcon')
  String? cardIcon;
  @JsonKey(name: 'cardHolderName')
  String? cardHolderName;

factory CardDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CardDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardDetailsModelToJson(this);


}