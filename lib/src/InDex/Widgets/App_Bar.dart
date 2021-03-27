
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/src/InDex/Widgets/Goi_y.dart';

Positioned appbar(BuildContext context,double opacity,double witdh,double height,double scrollview){
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity:opacity,
              child: Container(
                width: witdh,
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 1),
                      )
                    ]
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(5), 0, ScreenUtil().setWidth(5), 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: ScreenUtil().setWidth(310),
                        height: ScreenUtil().setHeight(35),
                        decoration: BoxDecoration(
                            color: opacity==1?Colors.black12:Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                        child:
                        Padding(
                          padding: EdgeInsets.fromLTRB( ScreenUtil().setWidth(5), 0, 0, 0),
                          child:Row(
                            children: [
                              Icon(Icons.search,color: Colors.black54,),
                              Container(
                                width: ScreenUtil().setWidth(5),
                              ),
                              Text('Tìm Kiếm',style: TextStyle(color: Colors.red),)
                            ],
                          ),
                        )

                    ),
                    Container(
                      width: ScreenUtil().setWidth(15),
                    ),
                    Icon(Icons.shopping_cart_outlined,color: opacity<1?Colors.white:Colors.red,size: ScreenUtil().setSp(25),),
                    Container(
                      width: ScreenUtil().setWidth(15),
                    ),
                    Icon(Icons.messenger_outline,color: opacity<1?Colors.white:Colors.red,size: ScreenUtil().setSp(25)),
                    Container(
                      width: ScreenUtil().setWidth(15),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
       scrollview>ScreenUtil().setHeight(1687)?goiY():SizedBox()
      ],
    )
  );
}