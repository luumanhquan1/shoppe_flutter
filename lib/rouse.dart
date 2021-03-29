import 'package:flutter/material.dart';
import 'package:funshop/src/InDex/In_Dex.dart';
import 'package:funshop/src/Log_in/Log_in.dart';
import 'package:funshop/src/addProduct/add_Product.dart';
import 'package:funshop/src/information_Page/%20start_To_Sell.dart';
import 'package:funshop/src/information_Page/information_Customer.dart';
import 'package:funshop/src/registration_Page/otp.dart';
import 'package:funshop/src/registration_Page/registration.dart';
import 'package:funshop/src/sectors_page/sectors_Page.dart';
import 'package:funshop/src/thong_tin_sp/Thong_tin_Sp.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
import 'package:funshop/src/registration_Page/information.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() {
    return {
      rouesList.index: (context) => Index(),
      rouesList.thongtinsp: (context) => thongTinsp(),
      rouesList.logIn: (context) => logIn(),
      rouesList.logUp: (context) => Registration(),
      rouesList.otp: (context) => otp(),
      rouesList.thongtinCustommer: (context) => thongtinCustommer(),
      rouesList.information: (context) => information(),
      rouesList.startTosell: (context) => startTosell(),
      rouesList.addproduct: (context) => addProduct(),
      rouesList.sectors: (context) => sectorsPage()
    };
  }
}
