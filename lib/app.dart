import 'package:funshop/common/constanis/RouseLists.dart';

import 'package:flutter/material.dart';
import 'package:funshop/rouse.dart';
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String initialRoute(){
      return rouesList.trangchu;
    }
    return MaterialApp(
      routes: Routes.getAll(),
      initialRoute: initialRoute(),
    );
  }
}
