

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Container shop(){
  return Container(
    height: 170,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 55,
                width: 55,
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
                  Text('long.icolor',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
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
                width: 60,
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(3))
                ),
                child: Center(
                    child: Text('Xem Shop',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w400,fontSize: 16),)
                ),
              )
            ],
          ),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                   width: 120,
                   height: 70,
                   color: Colors.transparent,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('433',style: TextStyle(color: Colors.red,fontSize: 20),),
                       Text('Sản Phẩm',style: TextStyle(color: Colors.black45,fontSize: 16),)
                     ],
                   ),
                 ),
                 Container(
                   height: 40,
                   width: 1,
                   color: Colors.black12,
                 ),
                 Container(
                   width: 120,
                   height: 70,
                   color: Colors.transparent,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('4.9',style: TextStyle(color: Colors.red,fontSize: 20),),
                       Text('Đánh Giá',style: TextStyle(color: Colors.black45,fontSize: 16),)
                     ],
                   ),
                 ),
                 Container(
                   height: 40,
                   width: 2,
                   color: Colors.black12,
                 ),
                 Container(
                   width: 120,
                   height: 70,
                   color: Colors.transparent,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('48%',style: TextStyle(color: Colors.red,fontSize: 20),),
                       Text('Phản hồi chát',style: TextStyle(color: Colors.black45,fontSize: 16),)
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
