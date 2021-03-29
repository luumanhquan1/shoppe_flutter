import 'package:funshop/Blocs/blocAppbar/blocappbar.dart';

class blocCatogoty extends blocAppbar {
  @override
  void event(String a) {

    bateven.sink.add(a);
  }

  blocCatogoty() {
    bateven.stream.listen((event) {
      controller1.sink.add(event);
    });
  }

  @override
  void disploy() {
    // TODO: implement disploy
    super.disploy();
  }
}
