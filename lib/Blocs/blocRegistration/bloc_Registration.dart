import 'dart:async';

import 'package:flutter/material.dart';

class blocRegistration {
  StreamController _controller = new StreamController();
  StreamController even = new StreamController();
  Stream get controller => _controller.stream;
  void batEven(String event) {
    even.sink.add(event);
  }

  blocRegistration() {
    even.stream.listen((event) {
      bool chuhoa=true;
      bool chuthuong=true;
      String chuoi = event;
      if (chuoi.toString().length >= 8 && chuoi.toString().length <= 16) {
        for(int i=0;i<chuoi.length;i++){
          if(chuoi.codeUnitAt(i)>=65&&chuoi.codeUnitAt(i)<=90){
          }else{
            chuhoa=false;
          }
          if(chuoi.codeUnitAt(i)>=97&&chuoi.codeUnitAt(i)<=122){
          }else{
            chuthuong=false;
          }
        }
        if(chuhoa==false&&chuthuong==false){
          _controller.sink.add('sai');
        }
        else{
          _controller.sink.add('dung');
        }
      }
      else{
        _controller.sink.add('dung');
      }
    });
  }
  void disploy(){
    _controller.close();
    even.close();
  }
}
