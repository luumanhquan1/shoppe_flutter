import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container anhSp(BuildContext context, double height) {
  return Container(
    height: ScreenUtil().setHeight(700),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: ScreenUtil().setHeight(520),
          color: Colors.white,
          child: PageView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Image(
                  image: NetworkImage(
                      'https://cf.shopee.vn/file/c3bdcdde1df701a1592fe5f3fa2c9db9'),
                  fit: BoxFit.fill,
                );
              }),
        ),
        Padding(
          padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), ScreenUtil().setHeight(10), ScreenUtil().setWidth(20), 0),
          child: Container(
            height: ScreenUtil().setHeight(75),
            color: Colors.white,
            child: Text(
              'Sticker dán hoạt hình nhiều mẫu chống nước sticker dán mũ bảo hiểm vali laptop cực xinh',
              style: TextStyle(fontSize: ScreenUtil().setSp(19)),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0, 0, 0),
          child: Text(
            'đ1.000 - đ4.500',
            style: TextStyle(color: Colors.red, fontSize: ScreenUtil().setSp(20)),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: ScreenUtil().setHeight(30)),
          child: Row(
            children: [
              Container(
                color: Colors.transparent,
                width: ScreenUtil().setWidth(100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star_sharp,
                      size: ScreenUtil().setSp(15),
                      color: Colors.red,
                    ),
                    Icon(Icons.star_sharp, size: ScreenUtil().setSp(15), color: Colors.red),
                    Icon(Icons.star_sharp, size: ScreenUtil().setSp(15), color: Colors.red),
                    Icon(Icons.star_sharp, size: ScreenUtil().setSp(15), color: Colors.red),
                    Icon(Icons.star_sharp, size: ScreenUtil().setSp(15), color: Colors.red),
                    Text('4.8')
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 2,
                color: Colors.black12,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Đã Bán 336',
                style: TextStyle(fontSize: ScreenUtil().setSp(16)),
              )
            ],
          ),
        )
      ],
    ),
  );
}
