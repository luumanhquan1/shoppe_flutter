import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';

class statusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screenuntil().ScreenUtilWitdh200 / 4,
      width: ScreenUtil().screenWidth,
      padding: EdgeInsets.fromLTRB(Screenuntil().screenUiltWitdh10, 0,
          Screenuntil().screenUiltWitdh10, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ScreenUtil().setWidth(90),
            child: Row(
              children: [
                Icon(
                  Icons.warning_amber_sharp,
                  size: ScreenUtil().setWidth(25),
                  color: Colors.black54,
                ),
                Text.rich(TextSpan(
                  text: 'Tình trạng',
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(13)),
                )),
              ],
            ),
          ),
         Container(
           child: Row(
             children: [
               Text('Mới',style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(15)),),
               Icon(
                 Icons.navigate_next_outlined,
                 color: Colors.black45,
                 size: ScreenUtil().setSp(17),
               )
             ],
           ),
         )
        ],
      ),
    );
  }
}
