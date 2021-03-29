import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/Blocs/blocSectors/bloc_Sectors.dart';
class tabbar extends StatelessWidget {
  TabController controller;
blocSectors bloc;
  tabbar({Key key,this.controller,this.bloc}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.black,
        isScrollable: true,
        indicatorColor: Colors.red,
        tabs:List.generate(bloc.list.length, (index){
          return Container(
            height: ScreenUtil().setHeight(40),
            child: Center(child: Text(bloc.list[index])),
          );
        })
    );
  }
}
