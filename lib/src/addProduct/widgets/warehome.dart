import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
class warehomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:Screenuntil().ScreenUtilWitdh200/4,
      width: ScreenUtil().screenWidth,
      padding: EdgeInsets.fromLTRB(Screenuntil().screenUiltWitdh10, 0, Screenuntil().screenUiltWitdh10, 0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
              color: Colors.black12
          ))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ScreenUtil().setWidth(90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.dynamic_feed,size: ScreenUtil().setWidth(25),color: Colors.black54),
                Text.rich(TextSpan(
                    text: 'Kho Hàng',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(13)),
                    children: [
                      TextSpan(text: '*', style: TextStyle(color: Colors.red))
                    ])),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(12), color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Thiết lập kho hàng',
                  hintStyle: TextStyle(
                      color: Colors.black26, fontSize: ScreenUtil().setSp(11))),
            ),
          ),
        ],
      ),
    );
  }
}
