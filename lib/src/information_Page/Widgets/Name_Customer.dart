import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';

class nameWidget extends StatelessWidget {
  dynamic data, colorsname, thanhvien;
  nameWidget({Key key, this.data, this.colorsname, this.thanhvien})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${data.data[0].hoTen}',
          style: TextStyle(
              color: colorsname,
              fontWeight: FontWeight.bold,
              fontSize: ScreenUtil().setSp(22)),
        ),
        SizedBox(
          height: 5,
        ),
      thanhvien?Container(
          width: ScreenUtil().setWidth(100),
          height: ScreenUtil().setHeight(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Thành viên',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: ScreenUtil().setSp(14),
                    fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.chevron_right_sharp,
                color: Colors.red,
                size: ScreenUtil().setSp(15),
              )
            ],
          ),
        ):Text(''),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              'Người Theo',
              style: TextStyle(
                  color: Colors.white, fontSize: ScreenUtil().setSp(14)),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '4',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(14)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 1,
              height: 20,
              color: Colors.black12,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Đã Theo dõi',
              style: TextStyle(
                  color: Colors.white, fontSize: ScreenUtil().setSp(14)),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '4',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(14)),
            ),
          ],
        ),
      ],
    );
  }
}
