import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:funshop/Apis/dangnhap.dart';
import 'package:funshop/Blocs/blocLogin/Bloc_login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

class logIn extends StatefulWidget {
  BlocLogin bloc;
  @override
  _logInState createState() => _logInState();
}

class _logInState extends State<logIn> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  final facebookLogin = FacebookLogin();
  bool pass = true;
  bool kiemtra = true;
  Map userProfile;
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      indicatorWidget: kiemtra
          ? null
          : Icon(
              Icons.warning_amber_sharp,
              color: Colors.white,
              size: ScreenUtil().setSp(35),
            ),
      barrierEnabled: true,
      textStyle: TextStyle(
          decoration: TextDecoration.none,
          color: Colors.white,
          fontSize: ScreenUtil().setSp(10)),
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: BackButton(
                color: Colors.red,
              ),
              centerTitle: true,
              title: Text(
                'Đăng Nhập',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(23),
                    fontWeight: FontWeight.w400),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(70),
                    ),
                    Center(
                      child: Container(
                        height: ScreenUtil().setSp(60),
                        child: Image.network(
                            'https://amendable-swab.000webhostapp.com/funshop.png'),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(40),
                    ),
                    TextField(
                      controller: user,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.teal),
                          prefixIcon: Container(
                            child: Icon(
                              Icons.email_outlined,
                              size: ScreenUtil().setSp(27),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    TextField(
                      controller: password,
                      obscureText: pass,
                      decoration: InputDecoration(
                          hintText: 'Mật Khẩu',
                          hintStyle: TextStyle(color: Colors.teal),
                          prefixIcon: Container(
                            child:
                                Icon(Icons.lock, size: ScreenUtil().setSp(27)),
                          ),
                          suffixIcon: Container(
                            width: ScreenUtil().setWidth(120),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    pass = !pass;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.wb_twighlight,
                                    size: ScreenUtil().setSp(27),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 15,
                                  width: 2,
                                  color: Colors.black12,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: ScreenUtil().setWidth(60),
                                  child: Text(
                                    'Quên?',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: ScreenUtil().setSp(20)),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        height: ScreenUtil().setHeight(45),
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            final progress = ProgressHUD.of(context);
                            progress.show();
                            Apidangnhap()
                                .dangnhap(user.text, password.text, context)
                                .then((value) {
                              kiemtra = false;
                              setState(() {});
                              if (value.length == 0) {
                                progress.showWithText(
                                    'Invalid account or password');
                                Future.delayed(Duration(seconds: 1), () {
                                  progress.dismiss();
                                });
                              } else {
                                Navigator.pop(context, value);
                              }
                            });
                          },
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              'Đăng nhập',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(
                                    18,
                                  ),
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Đăng ký',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: ScreenUtil().setSp(18),
                          fontWeight: FontWeight.w300),
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
                                      image:
                                          AssetImage('assets/img/google.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(325),
                            child: Center(
                                child: Text(
                              'Tiếp tục với Google',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: ScreenUtil().setSp(17)),
                            )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        _loginFacebook();
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
                                        image: AssetImage(
                                            'assets/img/facebook.png'),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            Container(
                              width: ScreenUtil().setWidth(325),
                              child: Center(
                                  child: Text(
                                'Tiếp tục với Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: ScreenUtil().setSp(17)),
                              )),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  _loginFacebook() async {
    final result = await facebookLogin.logInWithReadPermissions(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
        final profile = JSON.jsonDecode(graphResponse.body);
        setState(() {
          print('${profile}');
          userProfile = profile;
          //  Navigator.pop(context,userProfile);
        });
        break;
    }
  }
}
