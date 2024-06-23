// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_by_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetByGroup _$GetByGroupFromJson(Map<String, dynamic> json) => GetByGroup(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetByGroupToJson(GetByGroup instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'status': instance.status,
    };
