import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
class priceWidget extends StatelessWidget {
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
              children: [
                Icon(Icons.monetization_on_outlined,size: ScreenUtil().setWidth(25),color: Colors.black54),
                SizedBox(
                  width: ScreenUtil().setWidth(4),
                ),
                Text.rich(TextSpan(
                    text: 'Giá',
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
              textAlign: TextAlign.end,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(12), color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Thiết lập giá',
                  hintStyle: TextStyle(
                      color: Colors.black26, fontSize: ScreenUtil().setSp(11))),
            ),
          ),
        ],
      ),
    );
  }
}
