
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
class startTosellWidget extends StatelessWidget {
  dynamic fb;
  startTosellWidget({Key key,this.fb}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,rouesList.startTosell,arguments: fb );
      },
      child: Container(
        width: ScreenUtil().setWidth(130),
        height:  ScreenUtil().setHeight(40),
        padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Bắt đầu bán',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600,fontSize: ScreenUtil().setSp(15)),),
            Icon(Icons.chevron_right_sharp,color: Colors.red,size: ScreenUtil().setSp(23),)
          ],
        ),
      ),
    );
  }
}
