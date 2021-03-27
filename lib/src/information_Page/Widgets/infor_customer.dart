
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/Blocs/blocLogin/Bloc_login.dart';
import 'package:funshop/src/Log_in/Log_in.dart';
import 'package:funshop/src/information_Page/Widgets/%20repair_Name.dart';
Container inforCustommerWidget(var resuilt,BuildContext context,BlocLogin blocLogin){
 logIn login=new logIn();
  return Container(
    height: ScreenUtil().setHeight(180),
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () async {
             if(resuilt.hasData){
                 List name= await Navigator.push(context,MaterialPageRoute(builder: (context)=>repairName(resuilt.data[0].hoTen,resuilt.data[0].id)));
                 blocLogin.suaname(name[0]);
                 final prossen=ProgressHUD.of(context);
                 if(name[1]!='back') {
                   if (name[1] == 'done') {
                     prossen.showWithText('Cập nhật thành công');
                   } else {
                     prossen.showWithText('Lỗi,bất định');
                   }
                 }
                 Future.delayed(Duration(seconds: 1),(){
                   prossen.dismiss();
                 });
               
              

              }
             else{
               List result = await Navigator.push(context,
                   MaterialPageRoute(builder: (context) => login));
               blocLogin.batEven(result);
             }
            },
            child: Container(
              height: ScreenUtil().setHeight(60),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tên',style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(17)),),
                  Container(
             child: Row(
               children: [
                 Text( resuilt.hasData?resuilt.data[0].hoTen:'',style: TextStyle(fontSize: ScreenUtil().setSp(15)),),
                 Icon(Icons.chevron_right,size: ScreenUtil().setSp(17),)
               ],
             ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(60),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tên đăng nhập',style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(17)),),
                Container(
                  child: Row(
                    children: [
                      Text(resuilt.hasData?resuilt.data[0].userName:'',style: TextStyle(fontSize: ScreenUtil().setSp(15)),),

                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(60),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bio',style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(17)),),
                Container(
                  child: Row(
                    children: [
                      Text(resuilt.hasData?resuilt.data[0].bio:'',style: TextStyle(fontSize: ScreenUtil().setSp(15)),),
                      Icon(Icons.chevron_right,size: ScreenUtil().setSp(17),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}