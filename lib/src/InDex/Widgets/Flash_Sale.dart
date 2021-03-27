

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Padding flashSale(BuildContext context,double height){
return Padding(
  padding: EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(10), 0, 0),
  child: Container(
    width: double.infinity,
    height: ScreenUtil().setHeight(295),
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ScreenUtil().setWidth(205),
                height: ScreenUtil().setHeight(47),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FLASH',style: TextStyle(
                        color: Colors.red,
                        fontSize: ScreenUtil().setSp(21,allowFontScalingSelf: true),
                        fontWeight: FontWeight.bold
                    ),),
                    Text('SALE',style: TextStyle(
                      color: Colors.red,
                      fontSize: ScreenUtil().setSp(19),
                    ),),
                    Container(
                        width: ScreenUtil().setWidth(25),
                        height: ScreenUtil().setHeight(20),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(2))
                        ),
                        child: Center(
                          child: Text('00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                    ),
                    Container(
                        width: ScreenUtil().setWidth(25),
                        height: ScreenUtil().setHeight(20),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(2))
                        ),
                        child: Center(
                          child: Text('00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                    ),
                    Container(
                        width: ScreenUtil().setWidth(25),
                        height: ScreenUtil().setHeight(20),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(2))
                        ),
                        child: Center(
                          child: Text('00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                    )
                  ],
                ),
              ),
                    Container(
                      width: ScreenUtil().setWidth(90),
                      height: ScreenUtil().setHeight(35),
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Xem tất cả'),
                          Icon(Icons.arrow_forward_ios_sharp,size: 10,)
                        ],
                      ),
                    )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: ScreenUtil().setHeight(245),
          color: Colors.white,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (context,index){
              return
                Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Container(
                  width: ScreenUtil().setWidth(160),
                  color: Colors.white,
                  child:index==8?Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: ScreenUtil().setWidth(50),
                          height: ScreenUtil().setHeight(50),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2,color: Colors.red)
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.red,),
                          ),
                        ),
                        Text('Xem tất cả',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(16,allowFontScalingSelf: true)),)
                      ],
                    ),
                  ):
                  Column(
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(160),
                        height: ScreenUtil().setHeight(170),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img/sale.png')
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text('đ${'53.000'}',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(22),fontWeight: FontWeight.bold),),
                      ),
               Padding(
                 padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(15), ScreenUtil().setHeight(10), ScreenUtil().setWidth(15), 0),
                 child: Stack(
                   children: [
                     Container(
                       height: ScreenUtil().setHeight(22),
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.all(Radius.circular(15))
                       ),
                     ),
                     Container(
                       height: ScreenUtil().setHeight(22),
                       width: 9,
                       decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(15),
                             topLeft: Radius.circular(15),
                           )
                       ),
                     ),
                     Center(
                       child:Text('ĐÃ BÁN ${0}',style: TextStyle(color: Colors.white),),
                     )

                   ],
                 )
               )
                    ],
                  ),
                ),
              );
            }
          ),
        )
      ],
    ),
  ),

);
}