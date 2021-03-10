

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
BottomAppBar bottomAppBar(BuildContext context){
  return BottomAppBar(
    child: Container(
      height: 60,
      width: double.infinity,
      color: Colors.cyan,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              border: Border(right: BorderSide())
            ),
            child: Icon(Icons.sms_outlined,color: Colors.white,size: 25,),
          ),
          Container(
            height: 40,
            width: 100,
            
            child: Icon(Icons.shopping_basket,color: Colors.white,size: 25,),
          ),
          GestureDetector(
            onTap: (){
             _showbottomsheet(context);
            },
            child: Container(
              height: 70,
              width: 211,
             color: Colors.red,
              child: Center(
                child: Text('Mua Ngay',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
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
     height: (300+(150*1)).toDouble(),
     color: Colors.white,
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
           child: Container(
             height: 150,
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
                     width: 120,
                     height: 120,
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
                             color: Colors.red, fontSize: 20),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(
                           10, 0, 0, 10),
                       child: Text(
                         'Kho:5977',
                         style: TextStyle(
                             color: Colors.black54,
                             fontSize: 17),
                       ),
                     ),
                     SizedBox(
                       height: 5,
                     )
                   ],
                 ),
                 SizedBox(
                   width:70,
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
                 itemBuilder: (context,index){
                   return  Container(
                     height: 150,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         border: Border(bottom: BorderSide(color: Colors.black12,width: 1))
                     ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: 30,
                             child: Text('Kích Cỡ',style: TextStyle(fontSize: 16),),
                           ),
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                               child: GridView.count(
                                 crossAxisSpacing: 15,
                                 mainAxisSpacing: 15,
                                 childAspectRatio: (9/3),
                                 crossAxisCount: 4,
                                 children: List.generate(10, (index){
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
           height: 120,
           width: double.infinity,
           color: Colors.white,
           child: Column(
             children: [
               Container(
                 height: 60,
                 width: double.infinity,
                 color: Colors.white,
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Số lượng',style: TextStyle(fontSize: 17),),
                       Container(
                         height: 30,
                         width: 100,
                         color: Colors.white,
                         child: Row(
                           children: [
                             Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black12)
                               ),
                               child: Center(child: Text('-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                             ),
                             Container(
                               height: 30,
                               width: 40,
                               decoration: BoxDecoration(
                                   border: Border.all(color: Colors.black12)
                               ),
                               child: Center(child: Text('2',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.red),)),
                             ),
                             Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                   border: Border.all(color: Colors.black12)
                               ),
                               child: Center(child: Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                             )
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               Container(
                 height: 60,
                 width: double.infinity,
                 padding: EdgeInsets.all(8),
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.red,
                     borderRadius: BorderRadius.all(Radius.circular(5)),
                   ),
                   child: Center(
                     child: Text("Mua Ngay",style: TextStyle(color: Colors.white,fontSize: 16),),
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