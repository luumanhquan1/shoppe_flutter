import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
class smsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(100),
      height: ScreenUtil().setHeight(40),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.shopping_cart_outlined,size: ScreenUtil().setSp(30),),
          Icon(Icons.sms_outlined,size: ScreenUtil().setSp(30),),
          SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
