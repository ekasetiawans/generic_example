import 'package:my_generic/generic/generic.dart';

class Response<T> {
  bool success;
  T data;

  Response({this.success, this.data});
  factory Response.fromJson(Map<String, dynamic> json) {
    return Response<T>(
      success: json["success"],
      data: Generic.fromJson<T>(json["data"]),
    );
  }
}
