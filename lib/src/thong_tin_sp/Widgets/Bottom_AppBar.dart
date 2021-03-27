
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
BottomAppBar bottomAppBar(BuildContext context){
  return BottomAppBar(
    child: Container(
      height: ScreenUtil().setHeight(62),
      width: double.infinity,
      color: Colors.cyan,
      child: Row(
        children: [
          Container(
            height:  ScreenUtil().setHeight(40),
            width: ScreenUtil().setWidth(100),
            decoration: BoxDecoration(
              border: Border(right: BorderSide())
            ),
            child: Icon(Icons.sms_outlined,color: Colors.white,size: ScreenUtil().setSp(25),),
          ),
          Container(
            height:  ScreenUtil().setHeight(40),
            width: ScreenUtil().setWidth(100),
            
            child: Icon(Icons.shopping_basket,color: Colors.white,size: ScreenUtil().setSp(25),),
          ),
          GestureDetector(
            onTap: (){
             _showbottomsheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: ScreenUtil().setHeight(70),
                width: ScreenUtil().setWidth(214),
               color: Colors.red,
                child: Center(
                  child: Text('Mua Ngay',style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(20),fontWeight: FontWeight.w300),),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
void _showbottomsheet(BuildContext context){
 showMaterialModalBottomSheet(context: context, builder: (context){
   return Container(
     height: (ScreenUtil().setHeight(300)+(ScreenUtil().setHeight(150)*1)).toDouble(),
     color: Colors.white,
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
           child: Container(
             height: ScreenUtil().setHeight(150),
             width: double.infinity,
             decoration: BoxDecoration(
                 border: Border(
                     bottom: BorderSide(
                         color: Colors.black12, width: 1))),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                   child: Container(
                     width: ScreenUtil().setHeight(120),
                     height: ScreenUtil().setHeight(120),
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage('https://cf.shopee.vn/file/5bb5aef7f22160da2603e0f19715878a_tn')
                         )
                     ),
                   ),
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(
                           10, 0, 0, 10),
                       child: Text(
                         'đ50.000-đ150.000',
                         style: TextStyle(
                             color: Colors.red, fontSize: ScreenUtil().setSp(20)),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(
                           10, 0, 0, 10),
                       child: Text(
                         'Kho:5977',
                         style: TextStyle(
                             color: Colors.black54,
                             fontSize: ScreenUtil().setSp(20)),
                       ),
                     ),
                     SizedBox(
                       height: 5,
                     )
                   ],
                 ),
                 SizedBox(
                   width:ScreenUtil().setWidth(90),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                   child: GestureDetector(
                       onTap: (){
                         Navigator.pop(context);
                       },
                       child: Icon(Icons.close)
                   ),
                 )
               ],
             ),
           ),
         ),
         Expanded(
             child: ListView.builder(
                 itemCount: 1,
                 shrinkWrap: true,
                 itemBuilder: (context,index){
                   return  Container(
                     height: ScreenUtil().setHeight(150),
                     width: double.infinity,
                     decoration: BoxDecoration(
                         border: Border(bottom: BorderSide(color: Colors.black12,width: 1))
                     ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           Container(
                             height: ScreenUtil().setSp(30),
                             child: Text('Kích Cỡ',style: TextStyle(fontSize: ScreenUtil().setSp(17)),),
                           ),
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                               child: GridView.count(
                                 shrinkWrap: true,
                                 crossAxisSpacing: 15,
                                 mainAxisSpacing: 15,
                                 childAspectRatio: (ScreenUtil().setWidth(9)/ScreenUtil().setWidth(3)),
                                 crossAxisCount: 4,
                                 children: List.generate(5, (index){
                                   return Container(
                                     color: Colors.black12,
                                   );
                                 }),
                               ),
                             ),
                           )
                         ],
                       ),
                     ),
                   );
                 }
             )
         ),
         Container(
           height: ScreenUtil().setHeight(120),
           width: double.infinity,
           color: Colors.white,
           child: Column(
             children: [
               Container(
                 height: ScreenUtil().setHeight(60),
                 width: double.infinity,
                 color: Colors.white,
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Số lượng',style: TextStyle(fontSize: ScreenUtil().setSp(17)),),
                       Container(
                         height: ScreenUtil().setHeight(30),
                         width: ScreenUtil().setWidth(100),
                         color: Colors.white,
                         child: Row(
                           children: [
                             Container(
                               height: ScreenUtil().setHeight(30),
                               width: ScreenUtil().setWidth(30),
                               decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black12)
                               ),
                               child: Center(child: Text('-',style: TextStyle(fontSize: ScreenUtil().setSp(20),fontWeight: FontWeight.w700),)),
                             ),
                             Container(
                               height: ScreenUtil().setHeight(30),
                               width: ScreenUtil().setWidth(40),
                               decoration: BoxDecoration(
                                   border: Border.all(color: Colors.black12)
                               ),
                               child: Center(child: Text('2',style: TextStyle(fontSize: ScreenUtil().setSp(15),fontWeight: FontWeight.w400,color: Colors.red),)),
                             ),
                             Container(
                               height: ScreenUtil().setHeight(30),
                               width: ScreenUtil().setWidth(30),
                               decoration: BoxDecoration(
                                   border: Border.all(color: Colors.black12)
                               ),
                               child: Center(child: Text('+',style: TextStyle(fontSize: ScreenUtil().setSp(20),fontWeight: FontWeight.w700),)),
                             )
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               Container(
                 height: ScreenUtil().setHeight(60),
                 width: double.infinity,
                 padding: EdgeInsets.all(8),
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.red,
                     borderRadius: BorderRadius.all(Radius.circular(5)),
                   ),
                   child: Center(
                     child: Text("Mua Ngay",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(17)),),
                   ),
                 ),
               )
             ],
           ),
         )
       ],
     ),
   );
 });
}