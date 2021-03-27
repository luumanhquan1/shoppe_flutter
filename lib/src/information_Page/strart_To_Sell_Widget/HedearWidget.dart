import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/information_Page/Widgets/Name_Customer.dart';
import 'package:funshop/src/information_Page/Widgets/avarta_Widget.dart';

class header extends StatelessWidget {
  dynamic data;

  header({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().setHeight(85),
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          avatarWidget(
            size: ScreenUtil().setSp(50),
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${data.data[0].hoTen}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(20),
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Người Theo dõi',
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: ScreenUtil().setSp(14)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '4',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(14)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 1,
                    height: 20,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Đã Theo dõi',
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: ScreenUtil().setSp(14)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '4',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(14)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
