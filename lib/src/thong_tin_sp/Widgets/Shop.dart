

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Container shop(){
  return Container(
    height: ScreenUtil().setHeight(175),
    color: Colors.white,
    child: Padding(
      padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(15), 0, ScreenUtil().setWidth(15), 0),
      child: Column(
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: ScreenUtil().setSp(57),
                width: ScreenUtil().setSp(57),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://cf.shopee.vn/file/67dde98f6cc49ec2401bf5aa6931768e_tn'),
                    fit: BoxFit.fill
                  )
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('long.icolor',style: TextStyle(fontSize: ScreenUtil().setSp(17),fontWeight: FontWeight.w400),),
                  Text('Online 48 phút trước',style: TextStyle(color: Colors.black38),),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,size: 13,color: Colors.black38,),
                      Text('Hà Nội',style: TextStyle(color: Colors.black38))
                    ],
                  )
                ],
              ),
              SizedBox(
                width: ScreenUtil().setWidth(55),
              ),
              Container(
                width: ScreenUtil().setWidth(110),
                height: ScreenUtil().setHeight(45),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(3))
                ),
                child: Center(
                    child: Text('Xem Shop',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w400,fontSize: ScreenUtil().setSp(17)),)
                ),
              )
            ],
          ),
             SizedBox(height: ScreenUtil().setHeight(20),),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                   width: ScreenUtil().setWidth(120),
                   height: ScreenUtil().setHeight(70),
                   color: Colors.transparent,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('433',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(20)),),
                       Text('Sản Phẩm',style: TextStyle(color: Colors.black45,fontSize: ScreenUtil().setSp(16)),)
                     ],
                   ),
                 ),
                 Container(
                   height: 40,
                   width: 1,
                   color: Colors.black12,
                 ),
                 Container(
                   width: ScreenUtil().setWidth(120),
                   height: ScreenUtil().setHeight(70),
                   color: Colors.transparent,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('4.9',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(20)),),
                       Text('Đánh Giá',style: TextStyle(color: Colors.black45,fontSize:  ScreenUtil().setSp(16)),)
                     ],
                   ),
                 ),
                 Container(
                   height: 40,
                   width: 2,
                   color: Colors.black12,
                 ),
                 Container(
                   width: ScreenUtil().setWidth(120),
                   height: ScreenUtil().setHeight(70),
                   color: Colors.transparent,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('48%',style: TextStyle(color: Colors.red,fontSize:  ScreenUtil().setSp(20)),),
                       Text('Phản hồi chát',style: TextStyle(color: Colors.black45,fontSize: ScreenUtil().setSp(16)),)
                     ],
                   ),
                 )
               ],
             )
        ],
      ),
    ),
  );
}
