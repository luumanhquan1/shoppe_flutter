import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/Blocs/blocSectors/blocIndex.dart';
import 'package:funshop/Blocs/blocSectors/bloc_Sectors.dart';
import 'package:funshop/src/sectors_page/Widgets/tabbarView.dart';
import 'package:funshop/src/sectors_page/Widgets/tabbarWiget.dart';

class sectorsPage extends StatefulWidget {
  @override
  _sectorsPageState createState() => _sectorsPageState();
}

class _sectorsPageState extends State<sectorsPage>
    with TickerProviderStateMixin {
  TabController controller;
  ScrollController controllerscroll;
  int index1 = 0;
  blocSectors bloc = new blocSectors();
  blocIndex indexbloc = new blocIndex();
  int initial;
  int initPosition = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: bloc.controller,
        builder: (context, snapshot) {
          controller = new TabController(
              length: snapshot.hasData ? bloc.list.length : 1,
              vsync: this,
              initialIndex: controller.length - 1);
          controller.animateTo((controller.length - 1));
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: BackButton(
                  color: Colors.red,
                ),
                centerTitle: true,
                title: Text(
                  'Chọn ngành hàng',
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(17)),
                ),
              ),
              body: Column(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(40),
                    width: ScreenUtil().screenWidth,
                    child: tabbar(
                      controller: controller,
                      bloc: bloc,
                    ),
                  ),
                  Expanded(
                      child: tabbarview(
                    blocSec: bloc,
                    controller: controller,
                    data: bloc.data,
                    kei: bloc.key,
                    blocindex: indexbloc,
                  ))
                ],
              ));
        });
  }
}
