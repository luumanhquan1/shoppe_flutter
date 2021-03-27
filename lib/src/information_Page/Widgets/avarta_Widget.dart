import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
class avatarWidget extends StatelessWidget {
  double size;
  var color;
  avatarWidget({Key key,this.size,this.color}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setSp(size),
      height:  ScreenUtil().setSp(size),
      padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        // image: DecorationImage(
        //   image: NetworkImage(fb['picture']['data']['url']),
        //   fit: BoxFit.fill
        // )
      ),
    );
  }
}
