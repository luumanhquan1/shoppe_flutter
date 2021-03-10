
import 'package:flutter/material.dart';
import 'package:funshop/Widget/In_dex_Widget/Goi_y.dart';
Positioned appbar(BuildContext context,double opacity,double witdh,double height,double scrollview){
  return Positioned(
    top: 0,
    left: 0,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity:opacity,
              child: Container(
                width: witdh,
                height: height*0.09,
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: witdh*0.73,
                      height: height*0.09-40,
                      decoration: BoxDecoration(
                          color: opacity==1?Colors.black12:Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3))
                      ),
                      child:
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child:Row(
                          children: [
                            Icon(Icons.search,color: Colors.black54,),
                            Container(
                              width: 10,
                            ),
                            Text('Tìm Kiếm',style: TextStyle(color: Colors.red),)
                          ],
                        ),
                      )

                  ),
                  Container(
                    width: 15,
                  ),
                  Icon(Icons.shopping_cart_outlined,color: opacity<1?Colors.white:Colors.red,),
                  Container(
                    width: 15,
                  ),
                  Icon(Icons.messenger_outline,color: opacity<1?Colors.white:Colors.red,),
                  Container(
                    width: 15,
                  ),
                ],
              ),
            )
          ],
        ),
       scrollview>1595?goiY():SizedBox()
      ],
    )
  );
}