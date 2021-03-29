import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funshop/Blocs/blocSectors/blocIndex.dart';
import 'package:funshop/Blocs/blocSectors/bloc_Sectors.dart';
import 'package:funshop/Blocs/bloccatogory.dart';
import 'package:funshop/Constains/sectorsConstains.dart';
import 'package:funshop/src/addProduct/widgets/add_img.dart';
import 'package:funshop/src/sectors_page/Widgets/dangmuc.dart';
import 'package:funshop/src/sectors_page/Widgets/listView.dart';

class tabbarview extends StatelessWidget {
  TabController controller;
  blocSectors blocSec;
  var kei;
  var data;
  blocCatogoty bloccatogoty;
  blocIndex blocindex;
  tabbarview(
      {Key key,
      this.controller,
      this.blocSec,
      this.data,
      this.kei,
      this.blocindex,
        this.bloccatogoty
      }
  )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: controller,
        children: List.generate(blocSec.list.length, (index) {
          return listView(
            kei: kei,
            bloc: blocSec,
            data: data,
            blocindex: blocindex,
          );
        }));
  }
}
