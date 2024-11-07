// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) => MetaModel(
      total: json['total'] as int?,
      count: json['count'] as int?,
      perPage: json['perPage'] as int?,
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$MetaModelToJson(MetaModel instance) => <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
    };
