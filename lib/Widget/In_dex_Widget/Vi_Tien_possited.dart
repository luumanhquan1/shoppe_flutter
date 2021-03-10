import 'package:flutter/material.dart';
dynamic viTien(double witdh,double height){
  return Positioned(
    top: height*0.205,
      left: 15,
      right: 15,
      child: Container(
        height: height*0.075,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 1),
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               Icon(Icons.zoom_out_map),
            Container(
              height: height*0.08-30,
              width: 2,
              color: Colors.black12,
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(0, height*0.08/5, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wb_cloudy_outlined,color: Colors.blue,),
                      Container(
                        width: 5,
                      ),
                      Text("Ví FunPay",style: TextStyle(fontSize: witdh*0.04),)
                    ],
                  ),
                  Text('Đăng nhập để xem thông tin',style: TextStyle(fontSize: witdh*0.025),)
                ],
              ),
            ),
            Container(
              height: height*0.08-30,
              width: 2,
              color: Colors.black12,
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(0, height*0.08/5, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wb_auto_outlined,color: Colors.blue,),
                      Container(
                        width: 5,
                      ),
                      Text("Shop xu",style: TextStyle(fontSize: witdh*0.04))
                    ],
                  ),
                  Text('Đăng nhập để xem thông tin',style: TextStyle(fontSize: witdh*0.025))
                ],
              ),
            ),
          ],
        ),
      )
  );
}