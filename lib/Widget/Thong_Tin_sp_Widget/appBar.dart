import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
Positioned appBar(double scrollcontroler){
  return Positioned(
    top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(scrollcontroler),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0,5)
              )
            ]
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: scrollcontroler==1?Colors.transparent:Colors.black26,
                    shape: BoxShape.circle
                  ),
                  child: BackButton(
                    color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.transparent,
                  child: Center(
                      child:
                      Text('Sticker dán mũ bảo hiểm, laptop, vali, trang trí PVC chống nước đủ mẫu, cắt sẵn',
                        overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(scrollcontroler)),
                      )
                  ),
                ),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      color: scrollcontroler==1?Colors.transparent:Colors.black26,
                      shape: BoxShape.circle
                  ),
                child: Icon(Icons.share_outlined,color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),size: 30,),
                ),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      color:  scrollcontroler==1?Colors.transparent:Colors.black26,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.shopping_cart_sharp,color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),size: 30,),
                ),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      color:  scrollcontroler==1?Colors.transparent:Colors.black26,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.workspaces_outline,color: scrollcontroler==1?Colors.red:Colors.white.withOpacity(1-scrollcontroler),size: 30,),
                ),
              ],
            ),
          ),
        ),
      )
  );
}