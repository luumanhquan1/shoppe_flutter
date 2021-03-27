import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/common/constanis/RouseLists.dart';

class daBan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(200),
              ),
              Center(
                child: Text(
                  'Bắt đầu bán hàng trên FunShop',
                  style: TextStyle(
                      color: Colors.black54, fontSize: ScreenUtil().setSp(15)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, rouesList.addproduct);
                },
                child: Container(
                  width: ScreenUtil().setWidth(150),
                  height: ScreenUtil().setHeight(35),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                      child: Text(
                    'Thêm sản phẩm',
                    style: TextStyle(
                        color: Colors.white, fontSize: ScreenUtil().setSp(14)),
                  )),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(465),
              )
            ],
          ),
        ),
      ),
    );
  }
}
