
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
Container chiTietsanpham() {
  return Container(
    height: 430,
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
          child: Text('Chi tiết sản phẩm',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
        ),
        Container(
          height: 170,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Kho',style: TextStyle(color: Colors.black45,fontSize: 17),),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 40,
                      width: 240,
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 10),
                      child: Text('7537',style: TextStyle(color: Colors.black54,fontSize: 17),),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Thương Hiệu',style: TextStyle(color: Colors.black45,fontSize: 17),),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 40,
                      width: 240,
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('No brand',style: TextStyle(color: Colors.black54,fontSize: 17),),
                          Icon(Icons.arrow_forward_ios_sharp,size: 17,)
                        ],
                      )
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Kho',style: TextStyle(color: Colors.black45,fontSize: 17),),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 40,
                      width: 240,
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Quận Hai Bà Trưng,Hà Nội',style: TextStyle(color: Colors.black54,fontSize: 17),),
                    )
                  ],
                ),

              ],
            ),
        ),
        Container(
          height: 150,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
          ),
         child: Text('111111111111111111111111111\n11111111111111111111111\n111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111\n11111111111'
         ,overflow: TextOverflow.clip,
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
                       Text('Xem thêm',style: TextStyle(color: Colors.red,fontSize: 16),),

                     ],
                   ),
                 ),


      ],
    ),
  );
}
