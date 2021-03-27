import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/Blocs/blocLogin/Bloc_login.dart';
import 'package:funshop/app.dart';
import 'package:funshop/src/Log_in/Log_in.dart';
import 'package:funshop/src/information_Page/Widgets/Don_mua.dart';
import 'package:funshop/src/information_Page/Widgets/Sliver_AppBar.dart';
import 'package:funshop/src/information_Page/Widgets/Sliver_AppBar1.dart';
import 'package:funshop/src/information_Page/Widgets/funpay.dart';
import 'package:funshop/src/information_Page/Widgets/infor_customer.dart';
import 'package:funshop/src/registration_Page/registration.dart';
import 'package:funshop/common/constanis/RouseLists.dart';

class thongtinCustommer extends StatefulWidget {
  @override
  _thongtinCustommerState createState() => _thongtinCustommerState();
}

class _thongtinCustommerState extends State<thongtinCustommer> {
  List result;
  var dangnhapthuong;
  BlocLogin bloc = new BlocLogin();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bloc.disploy();
  }
  @override
  Widget build(BuildContext context) {
    double witdh = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ProgressHUD(
      indicatorWidget: Container(
        width: ScreenUtil().setSp(30),
        height: ScreenUtil().setSp(30),
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Center(
          child: Icon(
            Icons.done,
            color: Colors.black,
            size: ScreenUtil().setSp(20),
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: StreamBuilder<Object>(
            stream: bloc.controller,
            builder: (context, snapshot) {
              return CustomScrollView(
                slivers: [
                  appBar(witdh,snapshot),
                  snapshot.hasData
                      ? appBar1(witdh, snapshot)
                      : appBardangnhap(witdh, context),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 5,
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    donMuaWidget(),
                    SizedBox(
                      height: 7,
                    ),
                    inforCustommerWidget(snapshot, context, bloc),
                    SizedBox(
                      height: 7,
                    ),
                    uudai(),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    snapshot.hasData
                        ? Padding(
                            padding: EdgeInsets.fromLTRB(
                                ScreenUtil().setWidth(10),
                                0,
                                ScreenUtil().setWidth(10),
                                0),
                            child: GestureDetector(
                              onTap: () {
                                print('${bloc.name}');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Myapp()));
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(50),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Center(
                                  child: Text(
                                    'Đăng xuất',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(18)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Text('')
                  ]))
                ],
              );
            }),
      ),
    );
  }

  SliverAppBar appBardangnhap(
    double witdh,
    BuildContext context,
  ) {
    logIn login = new logIn();
    return SliverAppBar(
      expandedHeight: ScreenUtil().setHeight(90),
      backgroundColor: Colors.red,
      leading: SizedBox(),
      flexibleSpace: Container(
        height: ScreenUtil().setHeight(200),
        width: witdh,
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.white,
                size: ScreenUtil().setSp(50),
              ),
              Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        List result = await Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login));
                        bloc.batEven(result);
                      },
                      child: Container(
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().setWidth(120),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                        child: Center(
                            child: Text(
                          "Đăng nhập",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: ScreenUtil().setSp(18),
                              fontWeight: FontWeight.w400),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registration()))
                            .then((value) {

                          this.result = value;
                        });
                      },
                      child: Container(
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().setWidth(100),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Text(
                            'Đăng ký',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(18),
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
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
}
