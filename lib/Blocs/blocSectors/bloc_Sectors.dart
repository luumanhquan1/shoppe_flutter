import 'dart:async';

import 'package:funshop/Constains/sectorsConstains.dart';

class blocSectors {
  StreamController controller1 = new StreamController.broadcast();
  StreamController batevent = new StreamController();
  var index = ['','',''];
  var data = [];
  int indextab = 0;
  int index1 = 0;
  int dem=0;
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

  void indexdanhsach(String index) {
    this.index[dem]=index;
    if(dem==1){
      data.add(constains().select[int.parse(this.index[0])]['0'][int.parse(this.index[1])]['00']);
    }
    dem++;
    data.add(constains().select[int.parse(index)]['${index}']);

    key = '${index}';
  }

  blocSectors() {
    data.add(constains().listdanhsach);
    batevent.stream.listen((event) {
      controller1.sink.add(event);
    });
  }
}
