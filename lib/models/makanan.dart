import 'package:json_annotation/json_annotation.dart';

part 'makanan.g.dart';

@JsonSerializable()
class Makanan {
  @JsonKey(name: "nama")
  String nama;
  
  Makanan();

  factory Makanan.fromJson(Map<String, dynamic> json) =>
      _$MakananFromJson(json);
  Map<String, dynamic> toJson() => _$MakananToJson(this);
}
