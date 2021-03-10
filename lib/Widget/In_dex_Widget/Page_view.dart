
import 'package:flutter/material.dart';
dynamic pageView(BuildContext context,double witdh,double height){
 return SizedBox(
    width: witdh,
    height: height*0.22,
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