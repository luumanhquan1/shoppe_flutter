
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
dynamic pageView(BuildContext context,double witdh,double height){
 return SizedBox(
    width: witdh,
    height: ScreenUtil().setHeight(200),
    child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context,index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cf.shopee.vn/file/ee76e1c12287e21c5ec7473b20fb9182_xxhdpi'),
                fit: BoxFit.fill
              )
            ),
          );

        }
    ),
  );
}