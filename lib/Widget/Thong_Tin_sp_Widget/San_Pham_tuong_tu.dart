import 'package:flutter/material.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
dynamic sanPhamTuongTu(BuildContext context){
  return SliverPadding(
    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
    sliver: SliverGrid.count(
      childAspectRatio: (9/12),
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: List.generate(100, (index){
        return GestureDetector(
          onTap: (){
            Navigator.pushNamed(context,rouesList.thongtinsp);
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 180,
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://cf.shopee.vn/file/0c41eed25e5519e89fbb019a1a55a9f6_tn'),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Image.network('https://cf.shopee.vn/file/4fb305565a7942f031d1a8e8eb9c6efb')
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Text('Máy Tính xách tay MacBook Pro 2017',overflow: TextOverflow.ellipsis,),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text('đ16.950.000',style: TextStyle(color: Colors.red,fontSize: 20),),
                ),

              ],
            ),
            color: Colors.white,
          ),
        );
      }
      ),
    ),
  );
}