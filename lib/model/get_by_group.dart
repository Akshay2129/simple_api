import 'package:json_annotation/json_annotation.dart';
part 'get_by_group.g.dart';

@JsonSerializable(explicitToJson: true)
class GetByGroup {
  List <Data>? data;

  GetByGroup({
    this.data,
  });
  factory GetByGroup.fromJson(Map<String, dynamic> json) =>
      _$GetByGroupFromJson(json);
  Map<String, dynamic> toJson() => _$GetByGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data {
  String? status;

  Data({this.status});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
