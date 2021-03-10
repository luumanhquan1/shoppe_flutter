
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
Container danhGiaSanPham() {
  return Container(
    height: 550,
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Text('Đánh giả sản phẩm',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
        ),
        Container(
          height: 220,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               children: [
                 Container(
                   height: 25,
                   width: 25,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                           image: NetworkImage('https://cf.shopee.vn/file/67dde98f6cc49ec2401bf5aa6931768e_tn')
                       )
                   ),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Text('anbinh_207',style: TextStyle(color: Colors.black54),)
               ],
             ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 5, 0),
                child: Column(
                  children: [
                    Text("uhfeufhewifjweifjweifjwoejfewofjeowfjweofjowefj234234weoifjowfj",style: TextStyle(fontSize: 17),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.black54,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 220,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('https://cf.shopee.vn/file/67dde98f6cc49ec2401bf5aa6931768e_tn')
                        )
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('anbinh_207',style: TextStyle(color: Colors.black54),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 5, 0),
                child: Column(
                  children: [
                    Text("uhfeufhewifjweifjweifjwoejfewofjeowfjweofjowefj234234weoifjowfj",style: TextStyle(fontSize: 17),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.black54,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Xem Tất Cả (355)',style: TextStyle(color: Colors.red,fontSize: 16),),

            ],
          ),
        ),


      ],
    ),
  );
}
