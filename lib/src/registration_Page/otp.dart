

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/Blocs/BlocOTP/bloc.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
class otp extends StatefulWidget {
  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {
  String vali = '';
  blocOtp bloc = new blocOtp();
  TextEditingController controller = new TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bloc.disploy();
  }
  @override
  Widget build(BuildContext context) {
    List dulieu = ModalRoute.of(context).settings.arguments as List;
    return ProgressHUD(
      textStyle: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(12),decoration: TextDecoration.none),
      padding: EdgeInsets.all(10),
      barrierEnabled: false,

      indicatorWidget: Icon(Icons.warning_amber_sharp,color: Colors.white,size: ScreenUtil().setSp(38),),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.red,
          ),
          centerTitle: true,
          title: Text(
            'Nhập Mã Xác Minh',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: ScreenUtil().setSp(20),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Your verification code is sent by SMS to',
                      style: TextStyle(fontSize: ScreenUtil().setSp(16)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      dulieu[0],
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(17)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PinFieldAutoFill(
                codeLength: 5,
                keyboardType: TextInputType.number,
                controller: controller,
                onCodeChanged: (val) {
                  if (val.length == 5) {
                    bloc.batEvent('du');
                  } else {
                    bloc.batEvent('khongdu');
                  }
                },
              ),
              SizedBox(height: 30),
              SizedBox(
                height: ScreenUtil().setHeight(45),
                width: double.infinity,
                child: StreamBuilder(
                    stream: bloc.controller,
                    builder: (context, snapshot) {
                      return RaisedButton(
                        onPressed: snapshot.data == 'du'
                            ? () {
                          print('${dulieu[1]}');
                          if (controller.text != dulieu[1]) {
                            final prossen=ProgressHUD.of(context);
                            prossen.showWithText('sai mã xác minh');
                            Future.delayed(Duration(seconds: 1),(){
                              prossen.dismiss();
                            });
                          }
                          else{
                            Navigator.pushNamed(context, rouesList.information,arguments: dulieu[0]);
                          }
                        }
                            : null,
                        color: Colors.red,
                        child: Text('Tiếp'),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bạn không nhận được mã?',
                      style: TextStyle(fontSize: ScreenUtil().setSp(15)),
                    ),
                    Text(
                      'Gửi lại',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          content: Text(('Sai mã OTP')),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
