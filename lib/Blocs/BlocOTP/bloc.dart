import 'dart:async';

import 'package:flutter/material.dart';

class blocOtp {
  StreamController _controller = new StreamController();
  StreamController batEven = new StreamController();

  Stream get controller => _controller.stream;
  void batEvent(String data) {
    batEven.sink.add(data);
  }

  blocOtp() {
    batEven.stream.listen((event) {
      _controller.sink.add(event);
    });
  }
  void disploy(){
    _controller.close();
    batEven.close();
  }
}
