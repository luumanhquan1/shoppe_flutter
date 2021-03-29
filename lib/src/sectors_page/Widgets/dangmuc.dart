import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/Constains/sectorsConstains.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
class danhMucSectors extends StatelessWidget {
  var data;

  danhMucSectors({Key key,this.data}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                Text.rich(TextSpan(
                  text: '${data}',
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(15)),
                )),
              ],
            ),
          ),
          Icon(
            Icons.navigate_next_outlined,
            color: Colors.black45,
            size: ScreenUtil().setSp(30),
          )
        ],
      ),
    );
  }
}
