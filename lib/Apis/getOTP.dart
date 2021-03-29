import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
class ApiInsert{
  Future<String> otp(String username) async {
    String link='http://192.168.0.2:3000/otp';
http.Response response=await http.post(link,body:  {
  "username" : username,
});

    return response.body.toString();
  }
}