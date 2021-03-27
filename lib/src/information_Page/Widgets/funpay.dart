import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';

Container uudai() {
  return Container(
    height: ScreenUtil().setHeight(180),
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Container(
            height: ScreenUtil().setHeight(60),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.wb_cloudy_outlined,
                        size: ScreenUtil().setSp(25),
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Ví Funpay',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(15)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.chevron_right,
                        size: ScreenUtil().setSp(17),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(60),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline_sharp,
                        size: ScreenUtil().setSp(25),
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Đã xem gần đây',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(15)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.chevron_right,
                              size: ScreenUtil().setSp(17),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(60),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Địa Chỉ',
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(17)),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.chevron_right,
                        size: ScreenUtil().setSp(17),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
