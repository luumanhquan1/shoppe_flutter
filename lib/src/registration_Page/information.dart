

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/Apis/dangki.dart';
import 'package:funshop/Blocs/blocRegistration/bloc_Registration.dart';

class information extends StatefulWidget {
  @override
  _informationState createState() => _informationState();
}

class _informationState extends State<information> {
  TextEditingController _controller=new TextEditingController();
  blocRegistration _bloc=new blocRegistration();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _bloc.disploy();
  }
  @override
  Widget build(BuildContext context) {
    String dulieu = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Đăng ký',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenUtil().setSp(19)),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(20), ScreenUtil().setHeight(50), ScreenUtil().setWidth(20), 0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Thiết Lập Mật khẩu',
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(19)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                TextField(
                  controller: _controller,
                  obscureText: true,
                  onChanged: (values){
                   _bloc.batEven(values);
                  },

                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.admin_panel_settings_outlined),
                      hintText: 'Mật Khẩu'),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Text(
                  'Mật Khẩu phải dài từ 8-16 kí tự,bao gồm 1 chữ viết hoa và 1 chữ viết thường',
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(15)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                SizedBox(
                  width: double.infinity,
                  child: StreamBuilder<Object>(
                    stream: _bloc.controller,
                    builder: (context, snapshot) {
                      return RaisedButton(onPressed: snapshot.data=='sai'?(){
                        ApitPostdangki().postdangki(dulieu,_controller.text).then((value){
                          if(value=='"đăng kí thành công"'){
                           Navigator.pop(context);
                           Navigator.pop(context);
                           Navigator.pop(context,'232');
                                    }
                                  });
                                }:null,
                        color: Colors.red,
                      child: Text('Đăng Ký',style: TextStyle(
                        color: Colors.white,fontSize: ScreenUtil().setSp(15)
                      ),),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
