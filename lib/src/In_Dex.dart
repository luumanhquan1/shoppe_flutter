import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funshop/Widget/In_dex_Widget/App_Bar.dart';
import 'package:funshop/Widget/In_dex_Widget/Chuc_nang.dart';
import 'package:funshop/Widget/In_dex_Widget/Danh_Muc.dart';
import 'package:funshop/Widget/In_dex_Widget/Flash_Sale.dart';
import 'package:funshop/Widget/In_dex_Widget/Goi_y.dart';
import 'package:funshop/Widget/In_dex_Widget/Grid_view_sp.dart';
import 'package:funshop/Widget/In_dex_Widget/Page_view.dart';
import 'package:funshop/Widget/In_dex_Widget/Tim_kiem_best.dart';
import 'package:funshop/Widget/In_dex_Widget/Vi_Tien_possited.dart';


class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  ScrollController controller;
  double opacity = 0;
  double scrollview = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = ScrollController()
      ..addListener(() {
        listen();
      });
  }
  void listen() {
    scrollview = controller.offset;
    opacity = controller.offset / 100;
    if (opacity > 1) {
      opacity = 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double witdh = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Stack(
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
                                  pageView(context, witdh, height),
                                  chucNang(context, height),
                                ],
                              ),
                              viTien(witdh, height),
                            ],
                          ),
                          flashSale(context, height),
                          timKiemHangDau(context, height),
                          danhMuc(context, height),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                              height: 50,
                              width: witdh,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'GỢI Ý HÔM NAY',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
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
            appbar(context, opacity, witdh, height,scrollview)
          ],
        ));
  }
}
