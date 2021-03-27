import 'dart:async';

class blocAppbar {
  StreamController _controller = new StreamController();
  Stream get controller => _controller.stream;
  StreamController bateven = new StreamController();
  void event(String a) {
    bateven.sink.add('event');
  }

  blocAppbar() {
    bateven.stream.listen((event) {
      _controller.sink.add('event');
    });
  }
  void disploy() {
    _controller.close();
    bateven.close();
  }
}
