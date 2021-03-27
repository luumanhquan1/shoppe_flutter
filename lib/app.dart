import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
import 'package:flutter/material.dart';
import 'package:funshop/rouse.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String initialRoute() {
      return rouesList.index;
    }

    return ScreenUtilInit(
      allowFontScaling: false,
      designSize: Size(414, 896),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: Routes.getAll(),
          initialRoute: initialRoute(),
        );
      },
    );
  }
}
