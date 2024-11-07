import 'package:json_annotation/json_annotation.dart';

part 'meta_model.g.dart';

@JsonSerializable()
class MetaModel {
  MetaModel({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
  });
 @JsonKey(name: 'total')
  int? total;
  @JsonKey(name: 'count')
  int? count;
  @JsonKey(name: 'perPage')
  int? perPage;
  @JsonKey(name: 'currentPage')
  int? currentPage;
  @JsonKey(name: 'totalPages')
  int? totalPages;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);

  Map<String, dynamic> toJson() => _$MetaModelToJson(this);
}