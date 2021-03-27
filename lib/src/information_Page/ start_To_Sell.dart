import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/information_Page/Widgets/Name_Customer.dart';
import 'package:funshop/src/information_Page/strart_To_Sell_Widget/HedearWidget.dart';
import 'package:funshop/src/information_Page/strart_To_Sell_Widget/da_ban.dart';

class startTosell extends StatefulWidget {
  @override
  _startTosellState createState() => _startTosellState();
}

class _startTosellState extends State<startTosell> {
  @override
  Widget build(BuildContext context) {
    dynamic data=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: _appBar(),
      body:  Column(
    children: [header(data: data,),Expanded(child: daBan())],
    ),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          size: ScreenUtil().setSp(30),
          color: Colors.red,
        ),
      ),
      actions: [
        Icon(Icons.settings, color: Colors.red, size: ScreenUtil().setSp(30)),
        SizedBox(
          width: ScreenUtil().setWidth(10),
        ),
        Container(
          width: ScreenUtil().setWidth(50),
          height: ScreenUtil().setWidth(30),
          color: Colors.transparent,
          child: Stack(
            children: [
              Center(
                  child: Icon(
                Icons.message_outlined,
                color: Colors.red,
              )),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(3)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.red),
                    child: Text(
                      '23',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(15)),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
