import 'package:flutter/material.dart';

Container anhSp(BuildContext context, double height) {
  return Container(
    height: height * 0.78,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * 0.58,
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
          padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
          child: Container(
            height: 70,
            color: Colors.white,
            child: Text(
              'Sticker dán hoạt hình nhiều mẫu chống nước sticker dán mũ bảo hiểm vali laptop cực xinh',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            'đ1.000 - đ4.500',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Container(
                color: Colors.transparent,
                width: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star_sharp,
                      size: 15,
                      color: Colors.red,
                    ),
                    Icon(Icons.star_sharp, size: 15, color: Colors.red),
                    Icon(Icons.star_sharp, size: 15, color: Colors.red),
                    Icon(Icons.star_sharp, size: 15, color: Colors.red),
                    Icon(Icons.star_sharp, size: 15, color: Colors.red),
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
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        )
      ],
    ),
  );
}
