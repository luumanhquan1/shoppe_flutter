import 'dart:async';

import 'package:funshop/Apis/suathongtin.dart';

class blocSuaName{
  StreamController _controller =new StreamController();
  StreamController Even=new StreamController();
String namegoc;
  Stream get controller => _controller.stream;

  void batEven(String name,String namegoc){
    this.namegoc=namegoc;
    Even.sink.add(name);
  }
  Future<String> Eventsuaname(String name,String id) async {
    String trangthai;
    await Suathongtin().suathongtin(id, name).then((value){
      trangthai=value;
    });
    return trangthai;
  }
  blocSuaName(){
    Even.stream.listen((event) {
         if(event==namegoc||event==''){
          _controller.sink.add('dung');
      }
         else{
           _controller.sink.add('sai');
         }
    });
  }
  void disploy(){
    _controller.close();
    Even.close();
  }
}