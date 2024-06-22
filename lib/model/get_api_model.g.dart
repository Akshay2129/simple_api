// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiModel _$GetApiModelFromJson(Map<String, dynamic> json) => GetApiModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetApiModelToJson(GetApiModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
