import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/Blocs/blocAppbar/blocappbar.dart';

import 'InDex/Widgets/App_Bar.dart';
import 'InDex/Widgets/Chuc_nang.dart';
import 'InDex/Widgets/Danh_Muc.dart';
import 'InDex/Widgets/Flash_Sale.dart';
import 'InDex/Widgets/Goi_y.dart';
import 'InDex/Widgets/Grid_view_sp.dart';
import 'InDex/Widgets/Page_view.dart';
import 'InDex/Widgets/Tim_kiem_best.dart';
import 'InDex/Widgets/Vi_Tien_possited.dart';

class homePage extends StatefulWidget {
  double scrollview = 0;
  double witdh;
  double height;
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int rotate = 0;
  double scan = 1.0;
  double opacity = 0;
  bool kiemtra = true;
  List Screen = [];
  ScrollController controller;
  blocAppbar bloc = new blocAppbar();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = ScrollController()
      ..addListener(() {
        listen();
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
    bloc.disploy();
  }

  void listen() {
    widget.scrollview = controller.offset;
    opacity = controller.offset / 100;
    if (opacity > 1) {
      opacity = 1;
    }
    bloc.event('22312');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Center(
          child: Stack(
            children: [
              RefreshIndicator(
                  onRefresh: () async {},
                  child: CustomScrollView(
                    controller: controller,
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    pageView(
                                        context, widget.witdh, widget.height),
                                    chucNang(context, widget.height),
                                  ],
                                ),
                                viTien(widget.witdh, widget.height),
                              ],
                            ),
                            flashSale(context, widget.height),
                            timKiemHangDau(context, widget.height),
                            danhMuc(context, widget.height),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                                height: ScreenUtil().setHeight(50),
                                width: widget.witdh,
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'GỢI Ý HÔM NAY',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w400,
                                            fontSize: ScreenUtil().setSp(18)),
                                      )
                                    ],
                                  ),
                                )),
                            goiY(),
                          ],
                        ),
                      ),
                      grivieSp(context)
                    ],
                  )),
              StreamBuilder<Object>(
                  stream: bloc.controller,
                  builder: (context, snapshot) {
                    return appbar(context, opacity, widget.witdh, widget.height,
                        widget.scrollview);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
