import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
dynamic viTien(double witdh,double height){
  return Positioned(
    top: ScreenUtil().setHeight(185),
      left: ScreenUtil().setWidth(15),
      right: ScreenUtil().setWidth(15),
      child: Container(
        height:ScreenUtil().setHeight(67),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 1),
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               Icon(Icons.zoom_out_map),
            Container(
              height: ScreenUtil().setHeight(35),
              width: 2,
              color: Colors.black12,
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(12), 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wb_cloudy_outlined,color: Colors.blue,),
                      Container(
                        width: ScreenUtil().setWidth(5),
                      ),
                      Text("Ví FunPay",style: TextStyle(fontSize: ScreenUtil().setSp(18,allowFontScalingSelf: true)),)
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Text('Đăng nhập để xem thông tin',style: TextStyle(fontSize: ScreenUtil().setSp(11,allowFontScalingSelf: true)),)
                ],
              ),
            ),
            Container(
              height:  ScreenUtil().setHeight(35),
              width: 2,
              color: Colors.black12,
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(0,  ScreenUtil().setHeight(12), 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wb_auto_outlined,color: Colors.blue,),
                      Container(
                        width: 5,
                      ),
                      Text("Shop xu",style: TextStyle(fontSize:  ScreenUtil().setSp(18,allowFontScalingSelf: true)))
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Text('Đăng nhập để xem thông tin',style: TextStyle(fontSize: ScreenUtil().setSp(11)))
                ],
              ),
            ),
          ],
        ),
      )
  );
}