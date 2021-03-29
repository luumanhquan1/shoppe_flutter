import 'dart:async';

import 'package:funshop/Constains/sectorsConstains.dart';

class blocSectors {
  StreamController controller1 = new StreamController.broadcast();
  StreamController batevent = new StreamController();
  int index = 0;
  var data = [];
  int indextab = 0;
  int index1 = 0;
  String key = 'name';
  List list = ['Vui lòng chọn'];
  List listseclect = [
    constains().listdanhsach,
  ];
  Stream get controller => controller1.stream;
  void batevnt(String index) {
    indextab++;
    batevent.sink.add(indextab);
  }

  void indexdanhsach(int index) {
    this.index = index;
    data.add(constains().select[index]['${index}']);
    key = '${index}';
  }

  blocSectors() {
    data.add(constains().listdanhsach);
    batevent.stream.listen((event) {
      controller1.sink.add(event);
    });
  }
}
