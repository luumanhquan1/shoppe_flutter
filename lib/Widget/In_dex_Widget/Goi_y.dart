
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class goiY extends StatefulWidget {
  @override
  _goiYState createState() => _goiYState();
}

class _goiYState extends State<goiY> {
  List danhMuc=[
    {},
  {'name':'Thời Trang Nam','img':'https://cf.shopee.vn/file/687f3967b7c2fe6a134a2c11894eea4b_tn'},
    {'name':'Điện Thoại & Phụ Kiện','img':'https://cf.shopee.vn/file/31234a27876fb89cd522d7e3db1ba5ca_tn'},
    {'name':'Nhà Cửa & Đời Sống','img':'https://cf.shopee.vn/file/24b194a695ea59d384768b7b471d563f_tn'},
    {'name':'Máy Tính & Laptop','img':'https://cf.shopee.vn/file/c3f3edfaa9f6dafc4825b77d8449999d_tn'},
    {'name':'Máy Ảnh-Máy quay phim','img':'https://cf.shopee.vn/file/ec14dd4fc238e676e43be2a911414d4d_tn'},
    {'name':'Giày dép nữ','img':'https://cf.shopee.vn/file/48630b7c76a7b62bc070c9e227097847_tn'},
    {'name':'Đồng Hồ','img':'https://cf.shopee.vn/file/86c294aae72ca1db5f541790f7796260_tn'},
    {'name':'Giày dép nam','img':'https://cf.shopee.vn/file/74ca517e1fa74dc4d974e5d03c3139de_tn'},
  ];
  int vitri=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      child: ListView.builder(
        itemCount: danhMuc.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: GestureDetector(
            onTap: (){
              vitri=index;
                  setState(() {
              });
            },
            child: Container(
              width: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                border:index==vitri?Border.all(color: Colors.red,width: 1.5):null
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 index==0?Icon(Icons.border_all_sharp,color: Colors.red,size: 30,):Container(
                   width: 45,
                   height: 45,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage(danhMuc[index]['img'])
                     )
                   ),
                 ),
                  Text(index==0?'Tất Cả':'${danhMuc[index]['name']}',style: TextStyle(color:index==vitri?Colors.red:Colors.blueGrey,fontSize: 12),textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
