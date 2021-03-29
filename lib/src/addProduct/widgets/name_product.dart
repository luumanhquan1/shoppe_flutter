import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/Blocs/blocName_Product/blocNameProduct.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';

class nameProduct extends StatelessWidget {
  blocnameProduc bloc;
  nameProduct({Key key,this.bloc}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().setHeight(76),
      child: Padding(
        padding: EdgeInsets.fromLTRB(Screenuntil().screenUiltWitdh10,
            ScreenUtil().setHeight(10), Screenuntil().screenUiltWitdh10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                    text: 'Tên sản phẩm',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(12)),
                    children: [
                      TextSpan(text: '*', style: TextStyle(color: Colors.red))
                    ])),
                StreamBuilder(
                  stream: bloc.controller,
                  builder: (context,snapshot){
                    return Text(
                      '${snapshot.hasData?snapshot.data.toString().length:'0'}/120',
                      style: TextStyle(
                          color: Colors.black38, fontSize: ScreenUtil().setSp(13)),
                    );
                  },
                )
              ],
            ),
            TextField(
              onChanged: (values){
                bloc.event(values);
              },
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(12), color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Nhập tên sản phẩm',
                  hintStyle: TextStyle(
                      color: Colors.black26, fontSize: ScreenUtil().setSp(11))),
            ),
          ],
        ),
      ),
    );
  }
}
