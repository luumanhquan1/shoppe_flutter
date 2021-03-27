import 'dart:async';
import 'package:funshop/Model/informationMode.dart';
class BlocLogin{
  StreamController _controller=new StreamController();
  StreamController even=new StreamController();
String name;
String trangthai;
  Stream get controller => _controller.stream;
  List<information> todo=List<information>();
  void suaname(String name){
    this.name=name;

    todo[0].hoTen=name;
    even.sink.add(todo);
  }
Future<void> batEven(dynamic values){
    todo=values;
    if(todo.length==0){
    trangthai='loginfalse';
    }
    else{
      even.sink.add(todo);
    }
  }
  BlocLogin(){
    even.stream.listen((event) {
      _controller.sink.add(event);
    });
  }
  void disploy(){
    _controller.close();
    even.close();
  }
}