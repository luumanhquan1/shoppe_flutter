

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/Apis/getOTP.dart';
import 'package:funshop/common/constanis/RouseLists.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}
class _RegistrationState extends State<Registration> {
  TextEditingController email=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.red,
        ),
        centerTitle: true,
        title: Text(
          'Đăng ký',
          style: TextStyle(
              color: Colors.black,
              fontSize: ScreenUtil().setSp(25),
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: ScreenUtil().setSp(28),
                  ),
                  hintText: 'Email'),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: ScreenUtil().setSp(50),
              child: RaisedButton(
                onPressed: () {
                 ApiInsert().otp(email.text).then((value) => {
                  Navigator.pushNamed(context, rouesList.otp,arguments: [email.text,value])
                 });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                color: Colors.red,
                child: Text('Tiếp',style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(18),fontWeight: FontWeight.w400),),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setSp(20),
            ),
            Center(
              child: Text(
                'Hoặc',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setSp(20),
            ),
            Container(
              width: double.infinity,
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(2))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 0, 2),
                    child: Container(
                      width: ScreenUtil().setSp(45),
                      height: ScreenUtil().setSp(45),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage('assets/img/google.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(325),
                    child: Center(
                        child: Text(
                          'Tiếp tục với Google',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: ScreenUtil().setSp(17)),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                width: double.infinity,
                height: ScreenUtil().setHeight(50),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 2, 0, 2),
                      child: Container(
                        width: ScreenUtil().setSp(45),
                        height: ScreenUtil().setSp(45),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage('assets/img/facebook.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(325),
                      child: Center(
                          child: Text(
                            'Tiếp tục với Facebook',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: ScreenUtil().setSp(17)),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
