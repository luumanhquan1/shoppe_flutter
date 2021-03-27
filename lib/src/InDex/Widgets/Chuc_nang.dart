import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
dynamic chucNang(BuildContext context,double height){
  List _icon=[{'name':'khung Giờ Săn Sale','img':'https://cf.shopee.vn/file/0b79050cfcdedb49a815eeed68233bd7_xhdpi'},
  {'name':'Bảo vệ Gia Đình','img':'https://cf.shopee.vn/file/53d059b1f2592c05b8df8ae835950a2b_xhdpi'},
    {'name':'Hàng Quốc Tế','img':'https://cf.shopee.vn/file/a08ab28962514a626195ef0415411585_xhdpi'},
    {'name':'Ưu đãi thành Viên tới-50%','img':'https://cf.shopee.vn/file/419b9d5849452e616732a863559e322c_xhdpi'},
    {'name':'FreeShip Extra','img':'https://cf.shopee.vn/file/07ee4296b0a33885418670f2e3ffeca0_xhdpi'},
    {'name':'Fun Reward','img':'https://cf.shopee.vn/file/4a147bf13b6a4d561ce52ef39c62f8b1_xhdpi'},
    {'name':'Hoàn xu đơn bất kì','img':'https://cf.shopee.vn/file/21a4856d1fecd4eda143748661315dba_xhdpi'},
    {'name':'Brand DisCount','img':'https://cf.shopee.vn/file/c47aab87fbe390b96963d7045672d95c_xhdpi'},
    {'name':'Săn Siêu Sale','img':'https://cf.shopee.vn/file/c360d75f1605e54f07c2b30100755722_xhdpi'},

  ];
  return Container(
    width: double.infinity,
    height: ScreenUtil().setHeight(435),
    color: Colors.white,
    child: Column(
      children: [
        Container(
        height: ScreenUtil().setHeight(275),
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(65), 0, 0),
          child: GridView.count(
            mainAxisSpacing: 3,
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            children: List.generate(_icon.length, (index){
              return   Padding(
                padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(5), ScreenUtil().setHeight(10), 0, 0),
                child:   Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(55),
                        height: ScreenUtil().setHeight(55),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Image.network(_icon[index]['img'])
                      ),
                      Container(
                        height: 3,
                      ),
                      Text('${_icon[index]['name']}',style: TextStyle(fontSize: ScreenUtil().setSp(13)),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              );
            })
                  ),
        )
    ),
        Container(
          height: ScreenUtil().setHeight(32),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(122),
                      height:ScreenUtil().setHeight(95),
                      decoration: BoxDecoration(
                          color:Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          image: DecorationImage(
                              image: AssetImage('assets/img/heder/voucher.png'),
                              fit: BoxFit.fill
                          )
                      ),

                    ),
                    Container(
                      height: ScreenUtil().setHeight(12),
                    )
                  ],
                ),
                Positioned(
                  top: ScreenUtil().setHeight(85),
                    right: ScreenUtil().setWidth(15),
                    left: ScreenUtil().setWidth(15),
                    child: Container(
                      height: ScreenUtil().setHeight(22),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          )
                        ]
                      ),
                      child: Padding(
                        padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(15), 0, 0, 0),
                        child: Row(
                          children: [
                            Text('MUA NGAY',style: TextStyle(fontSize: ScreenUtil().setSp(11),color: Colors.red),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                              child: Icon(Icons.arrow_right_sharp,color: Colors.red,size: ScreenUtil().setSp(20),),
                            )
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(150),
                      height: ScreenUtil().setHeight(105),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          image: DecorationImage(
                              image: AssetImage('assets/img/heder/voucher2.png'),
                              fit: BoxFit.fill
                          )
                      ),

                    ),
                    Container(
                      height: ScreenUtil().setHeight(12),
                    )
                  ],
                ),
                Positioned(
                    top: ScreenUtil().setHeight(95),
                    right: ScreenUtil().setWidth(29),
                    left: ScreenUtil().setWidth(29),
                    child: Container(
                      height: ScreenUtil().setHeight(22),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0, 0, 0),
                        child: Row(
                          children: [
                            Text('MUA NGAY',style: TextStyle(fontSize: ScreenUtil().setSp(11),color: Colors.red),),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setSp(11)),
                              child: Icon(Icons.arrow_right_sharp,color: Colors.red,size: ScreenUtil().setSp(20),),
                            )
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(122),
                      height:ScreenUtil().setHeight(95),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        image: DecorationImage(
                          image: AssetImage('assets/img/heder/voucher3.png'),
                          fit: BoxFit.fill
                        )
                      ),

                    ),
                    Container(
                      height: ScreenUtil().setHeight(11),
                    )
                  ],
                ),
                Positioned(
                    top: ScreenUtil().setHeight(85),
                    right: ScreenUtil().setWidth(15),
                    left: ScreenUtil().setWidth(15),
                    child: Container(

                      height: ScreenUtil().setHeight(22),

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      child: Padding(
                        padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(15), 0, 0, 0),
                        child: Row(
                          children: [
                            Text('MUA NGAY',style: TextStyle(fontSize: ScreenUtil().setSp(11),color: Colors.red),),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setHeight(12)),
                              child: Icon(Icons.arrow_right_sharp,color: Colors.red,size: ScreenUtil().setSp(20),),
                            )
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}