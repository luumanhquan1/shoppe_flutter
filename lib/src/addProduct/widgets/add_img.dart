import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:funshop/src/__mock__/ScreenUntil_add_Product.dart';
import 'package:image_picker/image_picker.dart';

class addImage extends StatefulWidget {
  @override
  _addImageState createState() => _addImageState();
}

class _addImageState extends State<addImage> {
  File _image;
  List _list = [1];
  final picker = ImagePicker();
  List anh = List();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        anh.add(_image);
        _list.add('value');
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: Screenuntil().ScreenUtilHeight120,
      color: Colors.white,
      child: ListView.builder(
        itemCount: _list.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(Screenuntil().screenUiltWitdh10),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: Screenuntil().screenUiltWitdh10),
            child: Container(
              width: Screenuntil().ScreenUtilWitdh90,
              height: Screenuntil().ScreenUtilWitdh90,
              color: Colors.white,
              child: index < _list.length - 1
                  ? Image.file(anh[index])
                  : GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: DottedBorder(
                          color: Colors.red,
                          strokeWidth: 1,
                          child: Center(
                              child: Text(
                            'Thêm ảnh',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: ScreenUtil().setSp(12)),
                          ))),
                    ),
            ),
          );
        },
      ),
    );
  }
}
