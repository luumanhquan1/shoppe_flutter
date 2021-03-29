import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/src/information_Page/Widgets/Name_Customer.dart';
import 'package:funshop/src/information_Page/Widgets/avarta_Widget.dart';
SliverAppBar appBar1(double witdh,dynamic data){
  return SliverAppBar(
    expandedHeight: ScreenUtil().setHeight(90),
    backgroundColor: Colors.red,
    leading: SizedBox(),
    flexibleSpace:  Container(
      height: ScreenUtil().setHeight(200),
      width: witdh,
      color: Colors.red,
      child: Row(
        children: [
          SizedBox(width: ScreenUtil().setWidth(20),),
          avatarWidget(size: 70,color: Colors.grey,),
         SizedBox(
           width: ScreenUtil().setWidth(15),
         ),
        nameWidget(data: data,colorsname: Colors.white,thanhvien: true,)
        ],
      ),
    ),
  );
}