

import 'package:flutter/cupertino.dart';
import 'package:funshop/common/constanis/RouseLists.dart';

import 'src/Thong_tin_Sp.dart';
import 'src/Trang_chu.dart';

class Routes{
  static Map<String,WidgetBuilder> getAll(){
    return {
      rouesList.trangchu:(context)=>trangchu(),
      rouesList.thongtinsp:(context)=>thongTinsp()
    };
  }
}