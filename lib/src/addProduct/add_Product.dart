
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/Blocs/blocName_Product/blocNameProduct.dart';
import 'package:funshop/Blocs/bloccatogory.dart';
import 'package:funshop/Blocs/blocdesribe_Product/desbribleProductBloc.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
import 'package:funshop/src/addProduct/widgets/Seclect_Product.dart';
import 'package:funshop/src/addProduct/widgets/add_img.dart';
import 'package:funshop/src/addProduct/widgets/describe_Product.dart';
import 'package:funshop/src/addProduct/widgets/name_product.dart';
import 'package:funshop/src/addProduct/widgets/ship.dart';
import 'package:funshop/src/addProduct/widgets/status.dart';
import 'package:funshop/src/information_Page/Widgets/Name_Customer.dart';
class addProduct extends StatefulWidget {
  @override
  _addProductState createState() => _addProductState();
}

class _addProductState extends State<addProduct> {
  blocnameProduc blocNameProduc=new blocnameProduc();
blocDesbribleProduct blocDesbrible=new blocDesbribleProduct();
blocCatogoty blocCatogory=new blocCatogoty();
  @override
  Widget build(BuildContext context) {
    dynamic result=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white12.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.red,
onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context);

},
        ),
        centerTitle: true,
        title: Text('Thêm sản phẩm',style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(20)),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        addImage(),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            nameProduct(bloc: blocNameProduc,),
            StreamBuilder(
              stream: blocNameProduc.controller,
              builder: (context,snapshot){
                return Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setHeight(30),
                  padding: EdgeInsets.fromLTRB(Screenuntil().screenUiltWitdh10, ScreenUtil().setHeight(10), 0, 0),
                  child: Text(snapshot.hasData?snapshot.data.toString().length==0?'Vui lòng nhập Tên sản phẩm':'':'',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(12)),),
                );
              }
            ),
            describeProduct(bloc: blocDesbrible,),
            StreamBuilder(
                stream: blocDesbrible.controller,
                builder: (context,snapshot){
                  return Container(
                    width: ScreenUtil().screenWidth,
                    height: ScreenUtil().setHeight(30),
                    padding: EdgeInsets.fromLTRB(Screenuntil().screenUiltWitdh10, ScreenUtil().setHeight(10), 0, 0),
                    child: Text(snapshot.hasData?snapshot.data.toString().length==0?'Vui lòng nhập Mô tả sản phẩm':'':'',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(12)),),
                  );
                }
            ),
            seclectProduct(blocCatogory: blocCatogory,),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            shipWidget(),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            statusWidget(),
          ],
        ),
      ),
    );
  }
}
