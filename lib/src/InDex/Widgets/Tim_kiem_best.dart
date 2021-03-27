import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Padding timKiemHangDau(BuildContext context,double height){
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(300),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenUtil().setWidth(200),
                  height: ScreenUtil().setHeight(47),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('TÌM KIẾM HÀNG ĐẦU',style: TextStyle(
                          color: Colors.red,
                          fontSize: ScreenUtil().setSp(22),
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(85),
                  height: ScreenUtil().setHeight(35),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Xem thêm'),
                      Icon(Icons.arrow_forward_ios_sharp,size: ScreenUtil().setSp(10),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: ScreenUtil().setHeight(252),
            color: Colors.white,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                itemBuilder: (context,index){
                  return
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        width: ScreenUtil().setWidth(160),
                        color: index==8?Colors.white:Colors.black12.withOpacity(0.1),
                        child:index==8 ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: ScreenUtil().setWidth(50),
                                height: ScreenUtil().setHeight(50),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 2,color: Colors.red)
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.red,),
                                ),
                              ),
                              Text('Xem tất cả',style: TextStyle(color: Colors.red,fontSize: ScreenUtil().setSp(15)),)
                            ],
                          ),
                        ):
                        Column(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(165),
                              height: ScreenUtil().setHeight(165),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage('https://cf.shopee.vn/file/3b37cacd6e3e2bfce46df11a076c2948'),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text('Túi đóng hàng223413',style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(15),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(45),  ScreenUtil().setWidth(75), 0),
                              child: Text('Đã bán ${'24k+'}',style: TextStyle(fontSize: ScreenUtil().setSp(12)),),
                            )
                          ],
                        ),
                      ),
                    );
                }
            ),
          )
        ],
      ),
    ),

  );
}