import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Positioned appBar(double scrollcontroler){
  return Positioned(
    top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: ScreenUtil().setHeight(95),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(scrollcontroler),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0,5)
              )
            ]
        ),
        child: Center(
          child: Padding(
            padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(5), ScreenUtil().setHeight(20), ScreenUtil().setWidth(5), 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: ScreenUtil().setSp(42),
                  width: ScreenUtil().setSp(42),
                  decoration: BoxDecoration(
                    color: scrollcontroler==1?Colors.transparent:Colors.black26,
                    shape: BoxShape.circle
                  ),
                  child: BackButton(
                    color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),
                  ),
                ),
                Container(
                  height: ScreenUtil().setSp(50),
                  width: ScreenUtil().setSp(210),
                  color: Colors.transparent,
                  child: Center(
                      child:
                      Text('Sticker dán mũ bảo hiểm, laptop, vali, trang trí PVC chống nước đủ mẫu, cắt sẵn',
                        overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: ScreenUtil().setSp(22),fontWeight: FontWeight.w400,color: Colors.black.withOpacity(scrollcontroler)),
                      )
                  ),
                ),
                Container(
                  height: ScreenUtil().setSp(42),
                  width: ScreenUtil().setSp(42),
                  decoration: BoxDecoration(
                      color: scrollcontroler==1?Colors.transparent:Colors.black26,
                      shape: BoxShape.circle
                  ),
                child: Icon(Icons.share_outlined,color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),size: ScreenUtil().setSp(35),),
                ),
                Container(
                  height: ScreenUtil().setSp(42),
                  width: ScreenUtil().setSp(42),
                  decoration: BoxDecoration(
                      color:  scrollcontroler==1?Colors.transparent:Colors.black26,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.shopping_cart_sharp,color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),size: ScreenUtil().setSp(35),),
                ),
                Container(
                  height: ScreenUtil().setSp(42),
                  width: ScreenUtil().setSp(42),
                  decoration: BoxDecoration(
                      color:  scrollcontroler==1?Colors.transparent:Colors.black26,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.workspaces_outline,color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),size: ScreenUtil().setSp(35),),
                ),
              ],
            ),
          ),
        ),
      )
  );
}