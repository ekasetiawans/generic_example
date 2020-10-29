import 'package:json_annotation/json_annotation.dart';

part 'minuman.g.dart';

@JsonSerializable()
class Minuman {
  @JsonKey(name: "warna")
  String warna;
  
  Minuman();

  factory Minuman.fromJson(Map<String, dynamic> json) =>
      _$MinumanFromJson(json);
  Map<String, dynamic> toJson() => _$MinumanToJson(this);
}
