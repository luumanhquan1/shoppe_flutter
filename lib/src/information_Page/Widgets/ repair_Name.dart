
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/Blocs/BlocSuaname/blocSuaName.dart';

class repairName extends StatefulWidget {
  String ten;
int id;
  repairName(this.ten,this.id);

  @override
  _repairNameState createState() => _repairNameState();
}

class _repairNameState extends State<repairName> {
  TextEditingController _controller = new TextEditingController();
  bool kiemtra=true;
  blocSuaName bloc=new blocSuaName();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bloc.disploy();
  }
  @override
  Widget build(BuildContext context) {

    return ProgressHUD(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.red,
            onPressed: (){
              Navigator.pop(context,[widget.ten,'back']);
            },
          ),
          centerTitle: true,
          title: Text(
            'Sửa Tên',
            style:
                TextStyle(color: Colors.black, fontSize: ScreenUtil().setSp(19)),
          ),
          actions: [
            StreamBuilder<Object>(
              stream: bloc.controller,
              builder: (context, snapshot) {
                return GestureDetector(
                  onTap: snapshot.hasData?snapshot.data=='dung'?null:(){
                    final prossen=ProgressHUD.of(context);
                    prossen.show();
                    bloc.Eventsuaname(_controller.text,widget.id.toString()).then((value){
                    prossen.dismiss();
                     Navigator.pop(context,[_controller.text,value]);
                                });
                              }:null,
                  child: Center(
                    child: Text(
                      'Lưu',
                      style: TextStyle(
                          color: snapshot.hasData?snapshot.data=='dung'?Colors.black12:Colors.red:Colors.black12, fontSize: ScreenUtil().setSp(18)),
                    ),
                  ),
                );
              }
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TextField(
          maxLength: 20,
          controller: _controller,
          onChanged: (values){
            bloc.batEven(values,widget.ten);
          },
          decoration: InputDecoration(
            hintText: 'Nhập tại đây',
           prefixText: '   '
          ),
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.text=widget.ten;
  }
}
