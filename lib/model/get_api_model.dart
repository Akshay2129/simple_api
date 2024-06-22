import 'package:json_annotation/json_annotation.dart';
part 'get_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GetApiModel{
  Data? data;

  GetApiModel({
    this.data
  });
  factory GetApiModel.fromJson(Map<String, dynamic> json) => _$GetApiModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetApiModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data{
  int?id;
  String? name;

  Data({
    this.id,
    this.name
  });
  factory Data.fromJson(Map<String, dynamic>json) => _$DataFromJson(json);
  Map<String,dynamic> toJson()=> _$DataToJson(this);
}