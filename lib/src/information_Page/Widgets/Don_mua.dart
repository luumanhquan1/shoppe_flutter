import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container donMuaWidget() {
  return Container(
    height: ScreenUtil().setHeight(170),
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: ScreenUtil().setHeight(65),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    'Đơn Mua',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(17),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  child:Row(
                    children: [
                      Text(
                        'Xem lịch sử mua hàng',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(13),
                            fontWeight: FontWeight.w400,
                            color: Colors.black45),
                      ),
                      Icon(Icons.chevron_right,size: ScreenUtil().setSp(20),)
                    ],
                  )
                )
              ],
            ),
          ),
        ),
           SizedBox(
             height: ScreenUtil().setSp(10),
           ),
           Row(
             mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.payment_rounded,size: ScreenUtil().setSp(50),color: Colors.brown,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Chờ xác nhận',style: TextStyle(fontSize: ScreenUtil().setSp(13),fontWeight: FontWeight.w300),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.weekend_outlined,size: ScreenUtil().setSp(50),color: Colors.brown,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Chờ lấy hàng',style: TextStyle(fontSize: ScreenUtil().setSp(13),fontWeight: FontWeight.w300),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.local_car_wash,size: ScreenUtil().setSp(50),color: Colors.brown,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Đang giao',style: TextStyle(fontSize: ScreenUtil().setSp(13),fontWeight: FontWeight.w300),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.stars_outlined,size: ScreenUtil().setSp(50),color: Colors.brown,),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Đánh Giá',style: TextStyle(fontSize: ScreenUtil().setSp(13),fontWeight: FontWeight.w300),)
                ],
              ),
            ],
          ),
        
      ],
    ),
  );
}
