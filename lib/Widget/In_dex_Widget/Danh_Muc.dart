import 'dart:ui';

import 'package:flutter/material.dart';

Padding danhMuc(BuildContext context,double height){
  List danhMuc=[{'name':'Thời Trang Nam','img':'https://cf.shopee.vn/file/687f3967b7c2fe6a134a2c11894eea4b_tn'}
    ,{'name':'Thời Trang Nữ','img':'https://cf.shopee.vn/file/75ea42f9eca124e9cb3cde744c060e4d_tn'},
    {'name':'Điện Thoại & Phụ Kiện','img':'https://cf.shopee.vn/file/31234a27876fb89cd522d7e3db1ba5ca_tn'},
    {'name':'Mẹ & Bé','img':'https://cf.shopee.vn/file/099edde1ab31df35bc255912bab54a5e_tn'},
    {'name':'Thiết Bị Điện Tử','img':'https://cf.shopee.vn/file/978b9e4cb61c611aaaf58664fae133c5_tn'},
    {'name':'Nhà Cửa & Đời Sống','img':'https://cf.shopee.vn/file/24b194a695ea59d384768b7b471d563f_tn'},
    {'name':'Máy Tính & Laptop','img':'https://cf.shopee.vn/file/c3f3edfaa9f6dafc4825b77d8449999d_tn'},
    {'name':'Sức khỏe & Sắc Đẹp','img':'https://cf.shopee.vn/file/bba68b7dc2d664748dd075d500049d72_tn'},
    {'name':'Máy Ảnh-Máy quay phim','img':'https://cf.shopee.vn/file/ec14dd4fc238e676e43be2a911414d4d_tn'},
    {'name':'Giày dép nữ','img':'https://cf.shopee.vn/file/48630b7c76a7b62bc070c9e227097847_tn'},
    {'name':'Đồng Hồ','img':'https://cf.shopee.vn/file/86c294aae72ca1db5f541790f7796260_tn'},
    {'name':'Túi Ví','img':'https://cf.shopee.vn/file/fa6ada2555e8e51f369718bbc92ccc52_tn'},
    {'name':'Giày dép nam','img':'https://cf.shopee.vn/file/74ca517e1fa74dc4d974e5d03c3139de_tn'},
    {'name':'Phụ kiện thời trang','img':'https://cf.shopee.vn/file/8e71245b9659ea72c1b4e737be5cf42e_tn'},
    {'name':'Thiết bị điện gia dụng','img':'https://cf.shopee.vn/file/7abfbfee3c4844652b4a8245e473d857_tn'}
  ];
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: Container(
      width: double.infinity,
      height: height*0.5,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                height: 45,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('DANH MỤC',style: TextStyle(
                      color: Colors.red,
                      fontSize: 19,
                    ),),
                  ],
                ),
              ),
              Container(
                width: 85,
                height: 35,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Xem thêm'),
                    Icon(Icons.arrow_forward_ios_sharp,size: 10,)
                  ],
                ),
              )
            ],
          ),
          Container(
              height: height*0.4,
              color: Colors.transparent,
              child: Padding(
                padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: GridView.count(
                  childAspectRatio: (10/8),
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
               children: List.generate(danhMuc.length, (index){
                 return
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                     child: Container(
                       color: Colors.transparent,
                       child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               width: 120,
                               height: 120,

                               child: Image.network(danhMuc[index]['img']),
                             ),
                             Container(
                               height: 10,
                             ),
                         Text('${danhMuc[index]['name']}',style: TextStyle(fontSize: height*0.019),textAlign: TextAlign.center,)
                           ],
                       ),
                     ),
                   );
               }),
                       ),
                     ),
                   ),
                 ],
                ),
              )

  );

}