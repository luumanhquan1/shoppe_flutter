import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:funshop/Model/informationMode.dart';
import 'package:http/http.dart' as http;
class Apidangnhap{
  Future<List<information>> dangnhap(String username,String password,BuildContext context) async {
  try{
    List<dynamic> list;
    String link='http://192.168.0.2:3000/dangnhap';
    http.Response response = await http.post(link,body: {
      'username':username,
      'password':password
    });
    dynamic jsonRaw=json.decode(response.body);
    List<information> _listinfor=List<information>();
    list=jsonRaw['thongtin'];
    list.forEach((element) {
      _listinfor.add(information.fromJson(element));
    });
      return _listinfor;
  }
  catch(_){
    final prosenn=ProgressHUD.of(context);
    prosenn.showWithText('Lỗi,bất định');
    }
  }
}