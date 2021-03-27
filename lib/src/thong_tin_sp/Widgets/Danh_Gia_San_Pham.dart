
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Container danhGiaSanPham() {
  return Container(
    height: ScreenUtil().setHeight(590),
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: ScreenUtil().setHeight(50),
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), ScreenUtil().setHeight(15), 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Text('Đánh giả sản phẩm',style: TextStyle(fontWeight: FontWeight.w500,fontSize: ScreenUtil().setSp(17)),),
        ),
        Container(
          height: ScreenUtil().setHeight(225),
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), ScreenUtil().setHeight(15), 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               children: [
                 Container(
                   height: ScreenUtil().setSp(27),
                   width: ScreenUtil().setSp(27),
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                           image: NetworkImage('https://cf.shopee.vn/file/67dde98f6cc49ec2401bf5aa6931768e_tn')
                       )
                   ),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Text('anbinh_207',style: TextStyle(color: Colors.black54),)
               ],
             ),
              Padding(
                padding:  EdgeInsets.fromLTRB(ScreenUtil().setSp(30), ScreenUtil().setHeight(10), ScreenUtil().setWidth(5), 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("uhfeufhewifjweifjweifjwoejfewofjeowfjweofjowefj234234weoifjowfj",style: TextStyle(fontSize: ScreenUtil().setSp(18)),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: ScreenUtil().setSp(105),
                          height:  ScreenUtil().setSp(105),
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: ScreenUtil().setSp(105),
                          height:  ScreenUtil().setSp(105),
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: ScreenUtil().setSp(105),
                          height:  ScreenUtil().setSp(105),
                          color: Colors.black54,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(225),
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), ScreenUtil().setHeight(15), 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: ScreenUtil().setSp(27),
                    width: ScreenUtil().setSp(27),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('https://cf.shopee.vn/file/67dde98f6cc49ec2401bf5aa6931768e_tn')
                        )
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('anbinh_207',style: TextStyle(color: Colors.black54),)
                ],
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(ScreenUtil().setSp(30), ScreenUtil().setHeight(10), ScreenUtil().setWidth(5), 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("uhfeufhewifjweifjweifjwoejfewofjeowfjweofjowefj234234weoifjowfj",style: TextStyle(fontSize: ScreenUtil().setSp(18)),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: ScreenUtil().setSp(105),
                          height:  ScreenUtil().setSp(105),
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: ScreenUtil().setSp(105),
                          height:  ScreenUtil().setSp(105),
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: ScreenUtil().setSp(105),
                          height:  ScreenUtil().setSp(105),
                          color: Colors.black54,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(65),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Xem Tất Cả (355)',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(17)),),

            ],
          ),
        ),


      ],
    ),
  );
}
