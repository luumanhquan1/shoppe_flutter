
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'In_Dex.dart';
class trangchu extends StatefulWidget {
  @override
  _trangchuState createState() => _trangchuState();
}

class _trangchuState extends State<trangchu> {
  List _icon=[{'name':'Home','icon':Icons.home},
    {'name':'Fun Feed','icon':Icons.dynamic_feed},
    {'name':'Thông Báo','icon':Icons.unsubscribe_outlined},
    {'name':'Tôi','icon':Icons.assignment_ind_outlined}
  ];
  int vitri=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Index(),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                  )
                ]
              ),
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: _icon.length,
                  itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(_icon[index]['icon'],size: 30,color: index==vitri?Colors.red:Colors.grey,),
                          Text('${_icon[index]['name']}',style: TextStyle(color:index==vitri?Colors.red:Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                  );
                  }
              )
            ),
          )
        ],
      ),
    );
  }
}
