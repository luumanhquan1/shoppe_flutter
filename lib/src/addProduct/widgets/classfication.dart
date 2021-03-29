import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';

class classficationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screenuntil().ScreenUtilWitdh200 / 4,
      width: ScreenUtil().screenWidth,
      padding: EdgeInsets.fromLTRB(Screenuntil().screenUiltWitdh10, 0,
          Screenuntil().screenUiltWitdh10, 0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.all_inbox_sharp,
                  size: ScreenUtil().setWidth(25),color: Colors.black54
                ),
                Text.rich(TextSpan(
                  text: 'Phân loại hàng',
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(13)),
                )),
              ],
            ),
          ),
          Icon(
            Icons.navigate_next_outlined,
            color: Colors.black45,
            size: ScreenUtil().setSp(17),
          )
        ],
      ),
    );
  }
}
