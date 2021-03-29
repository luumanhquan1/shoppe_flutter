import 'dart:async';

import 'package:funshop/Blocs/blocAppbar/blocappbar.dart';

class blocnameProduc extends blocAppbar {
  @override
  void event(String a) {
    // TODO: implement event
    bateven.sink.add(a);
  }
  blocnameProduc() {
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
