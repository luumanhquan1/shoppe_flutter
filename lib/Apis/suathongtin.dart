import 'package:flutter/cupertino.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Suathongtin {
  Future<String> suathongtin(String id, String name,BuildContext context) async {
    try{
      String link = 'http://192.168.0.2:3000/suathongtin';
      http.Response response =
      await http.post(link, body: {'hoten': name, 'id': id});
      dynamic jsonRaw = json.decode(response.body);
      return jsonRaw['trangthai'];
    }catch (_){

    }
  }
}
