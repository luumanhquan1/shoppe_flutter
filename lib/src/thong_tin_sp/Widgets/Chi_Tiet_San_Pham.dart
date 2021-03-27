import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container chiTietsanpham() {
  return Container(
    height: ScreenUtil().setHeight(460),
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))),
          child: Text(
            'Chi tiết sản phẩm',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: ScreenUtil().setSp(17)),
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(183),
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(40),
                    width: ScreenUtil().setWidth(120),
                    color: Colors.transparent,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Kho',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: ScreenUtil().setSp(17)),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(30),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(40),
                    width: ScreenUtil().setWidth(240),
                    color: Colors.transparent,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      '7537',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: ScreenUtil().setSp(17)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(40),
                    width: ScreenUtil().setWidth(120),
                    color: Colors.transparent,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Thương Hiệu',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: ScreenUtil().setSp(17)),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(30),
                  ),
                  Container(
                      height: ScreenUtil().setHeight(40),
                      width: ScreenUtil().setWidth(240),
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'No brand',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: ScreenUtil().setSp(17)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: ScreenUtil().setSp(17),
                          )
                        ],
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(40),
                    width: ScreenUtil().setWidth(120),
                    color: Colors.transparent,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Gửi từ',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: ScreenUtil().setSp(17)),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(30),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(40),
                    width: ScreenUtil().setWidth(240),
                    color: Colors.transparent,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Quận Hai Bà Trưng,Hà Nội',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: ScreenUtil().setSp(17)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(158),
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(10), ScreenUtil().setHeight(15), 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))),
          child: Text(
            '111111111111111111111111111\n11111111111111111111111\n111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111\n11111111111',
            overflow: TextOverflow.clip,
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(63),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Xem thêm',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
