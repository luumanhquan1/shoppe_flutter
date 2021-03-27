import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/src/information_Page/Widgets/sms_Widget.dart';
import 'package:funshop/src/information_Page/Widgets/widgetStarttosell.dart';
SliverAppBar appBar(double witdh,dynamic data){
  return SliverAppBar(
    backgroundColor: Colors.red,
    actions: [
      SafeArea(
        child: Container(
          height: ScreenUtil().setHeight(70),
          width: witdh,
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             startTosellWidget(fb: data ,),
            smsWidget()
            ],
          ),
        ),
      ),
    ],

  );
}