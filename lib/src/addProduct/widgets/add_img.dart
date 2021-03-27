import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
class addImage extends StatefulWidget {
  @override
  _addImageState createState() => _addImageState();
}

class _addImageState extends State<addImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: Screenuntil().ScreenUtilHeight120,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(Screenuntil().screenUiltWitdh10),
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.only(right:Screenuntil().screenUiltWitdh10 ),
            child: Container(

              color: Colors.yellow,
            ),
          );
        },
      ),
    );
  }
}
