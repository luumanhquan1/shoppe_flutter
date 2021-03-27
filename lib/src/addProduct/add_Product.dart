
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/src/addProduct/widgets/add_img.dart';
class addProduct extends StatefulWidget {
  @override
  _addProductState createState() => _addProductState();
}

class _addProductState extends State<addProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.red,
        ),
        centerTitle: true,
        title: Text('Thêm sản phẩm',style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(20)),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        addImage()
          ],
        ),
      ),
    );
  }
}
