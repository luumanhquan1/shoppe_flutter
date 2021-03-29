import 'dart:async';

class blocIndex {
  StreamController _controller = new StreamController.broadcast();
  Stream get controller => _controller.stream;
  StreamController batevent = new StreamController();
  void batEvent(int index) {
    batevent.sink.add(index);
  }

  blocIndex() {
    batevent.stream.listen((event) {
      _controller.sink.add(event);
    });
  }
}
