import 'package:flutter/material.dart';

import 'Widgets/Anh_sp.dart';
import 'Widgets/Bottom_AppBar.dart';
import 'Widgets/Chi_Tiet_San_Pham.dart';
import 'Widgets/Danh_Gia_San_Pham.dart';
import 'Widgets/San_Pham_tuong_tu.dart';
import 'Widgets/Shop.dart';
import 'Widgets/appBar.dart';

class thongTinsp extends StatefulWidget {
  @override
  _thongTinspState createState() => _thongTinspState();
}

class _thongTinspState extends State<thongTinsp> {
  ScrollController _controller;
  double controller = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController()
      ..addListener(() {
        listen();
      });
  }

  void listen() {
    controller = _controller.offset / 300;
    if (controller > 1) {
      controller = 1;
    }

    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double witdh = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: bottomAppBar(context),
      body: Stack(
        children: [
          CustomScrollView(
            controller: _controller,
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  anhSp(context, height),
                  SizedBox(
                    height: 10,
                  ),
                  shop(),
                  SizedBox(
                    height: 10,
                  ),
                  chiTietsanpham(),
                  SizedBox(
                    height: 10,
                  ),
                  danhGiaSanPham(),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sản phẩm Tương Tự',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          child: Row(
                            children: [
                              Text(
                                'Xem Tất Cả',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 15,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ]),
              ),
                sanPhamTuongTu(context),
            ],
          ),
          appBar(controller)
        ],
      ),
    );
  }
}
