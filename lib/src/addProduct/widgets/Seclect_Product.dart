import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/Blocs/bloccatogory.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
import 'package:funshop/src/addProduct/widgets/Price_Widget.dart';
import 'package:funshop/src/addProduct/widgets/catogory_Widget.dart';
import 'package:funshop/src/addProduct/widgets/classfication.dart';
import 'package:funshop/src/addProduct/widgets/warehome.dart';
class seclectProduct extends StatelessWidget {
  blocCatogoty blocCatogory;

  seclectProduct({Key key,this.blocCatogory}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      color: Colors.white,
      child: Column(
        children: [
          catogoryWidget(blocCatogory: blocCatogory,),
          priceWidget(),
          warehomeWidget(),
          classficationWidget(),
        ],
      ),
    );
  }
}
