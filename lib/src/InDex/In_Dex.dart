import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funshop/src/Fun_Feed.dart';
import 'package:funshop/src/Notification_Page.dart';
import 'package:funshop/src/home_Page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funshop/src/information_Page/information_Customer.dart';

class Index extends StatefulWidget {

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List _icon = [
    {'name': 'Home', 'icon': Icons.home},
    {'name': 'Fun Feed', 'icon': Icons.dynamic_feed},
    {'name': 'Thông Báo', 'icon': Icons.unsubscribe_outlined},
    {'name': 'Tôi', 'icon': Icons.assignment_ind_outlined}
  ];
  int rotate = 0;
  double scan = 1;
  List Screen;
  int vitri = 0;
int g;
homePage homepage=new homePage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double witdh = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.97),
        bottomNavigationBar: bottomAppbar(),
        body: IndexedStack(
          index: vitri,
          children: [
            homepage,
            funfeed(),
            notification(),
            thongtinCustommer(),
          ],
        ));
  }

  BottomAppBar bottomAppbar() {
    return BottomAppBar(
      child: Container(
          height: ScreenUtil().setHeight(55),
          decoration: BoxDecoration(
              color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey)]),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _icon.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    vitri = index;
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                            child: RotationTransition(
                              turns: index != 0
                                  ? AlwaysStoppedAnimation(360 / 360)
                                  : AlwaysStoppedAnimation(rotate / 360),
                              child: Transform(
                                alignment: FractionalOffset.center,
                                transform: new Matrix4.identity()
                                  ..scale(scan, scan),
                                child: Icon(
                                  _icon[index]['icon'],
                                  size: ScreenUtil().setSp(30),
                                  color:
                                      index == vitri ? Colors.red : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '${_icon[index]['name']}',
                          style: TextStyle(
                              color: index == vitri ? Colors.red : Colors.grey,
                              fontSize: ScreenUtil().setSp(13)),
                        )
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
