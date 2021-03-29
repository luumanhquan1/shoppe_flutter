import 'dart:async';

class blocAppbar {
  StreamController controller1 = new StreamController.broadcast();
  Stream get controller => controller1.stream;
  StreamController bateven = new StreamController.broadcast();
  void event(String a) {
    bateven.sink.add('event');
  }

  blocAppbar() {
    bateven.stream.listen((event) {
      controller1.sink.add('event');
    });
  }
  void disploy() {
    controller1.close();
    bateven.close();
  }
}
