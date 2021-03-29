import 'package:funshop/Blocs/blocAppbar/blocappbar.dart';

class blocDesbribleProduct extends blocAppbar{
  @override
  void event(String a) {
    // TODO: implement event
    super.event(a);
    bateven.sink.add(a);
  }

  blocDesbribleProduct(){
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