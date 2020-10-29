// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:my_generic/api/response.dart';
import 'package:my_generic/generic/generic.dart';
import 'package:my_generic/models/makanan.dart';
import 'package:my_generic/models/minuman.dart';

void main() {
  test("test generic", () {
    Generic.register<Makanan>((json) => Makanan.fromJson(json));
    Generic.register<Minuman>((json) => Minuman.fromJson(json));

    final jsonMakanan = '{"success": true, "data" : {"nama" : "Ayam goreng"}}';
    final jsonMinuman = '{"success": true, "data" : {"warna" : "Merah"}}';

    final Response<Makanan> responseMakanan =
        Response.fromJson(json.decode(jsonMakanan));

    print(responseMakanan.data);
    expect(responseMakanan.data.nama, "Ayam goreng");

    final Response<Minuman> responseMinuman =
        Response.fromJson(json.decode(jsonMinuman));

    print(responseMinuman.data);
    expect(responseMinuman.data.warna, "Merah");
  });
}
