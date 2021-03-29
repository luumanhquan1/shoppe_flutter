import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
class shipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height:Screenuntil().ScreenUtilWitdh200/4,
      width: ScreenUtil().screenWidth,
      padding: EdgeInsets.fromLTRB(Screenuntil().screenUiltWitdh10, 0, Screenuntil().screenUiltWitdh10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.local_car_wash,size: ScreenUtil().setWidth(25),color: Colors.black54),
                Text.rich(TextSpan(
                    text: 'Phí vận chuyển',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(13)),
                    children: [
                      TextSpan(text: '(Cân nặng/Kích thước)', style: TextStyle(color: Colors.black45,fontSize: ScreenUtil().setSp(11)),),
                      TextSpan(text: '*', style: TextStyle(color: Colors.red))
                    ])),
              ],
            ),
          ),
          Icon(Icons.navigate_next_outlined,color: Colors.black45,size: ScreenUtil().setSp(17),)
        ],
      ),
    );
  }
}
