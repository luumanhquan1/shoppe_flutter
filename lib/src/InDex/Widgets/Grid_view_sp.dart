import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
import 'package:flutter/material.dart';

dynamic grivieSp(BuildContext context) {
  return SliverPadding(
    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
    sliver: SliverGrid.count(
      childAspectRatio: (ScreenUtil().setHeight(9) /ScreenUtil().setHeight(13)),
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: List.generate(100, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, rouesList.thongtinsp);
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: ScreenUtil().setSp(200),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cf.shopee.vn/file/0c41eed25e5519e89fbb019a1a55a9f6_tn'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0, ScreenUtil().setWidth(10), ScreenUtil().setHeight(20)),
                  child: Text(
                    'Máy Tính xách tay MacBook Pro 2017',style: TextStyle(fontSize: ScreenUtil().setSp(15)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0, 0, ScreenUtil().setHeight(10)),
                  child: Text(
                    'đ16.950.000',
                    style: TextStyle(color: Colors.red, fontSize: ScreenUtil().setSp(20)),
                  ),
                ),
              ],
            ),
            color: Colors.white,
          ),
        );
      }),
    ),
  );
}
