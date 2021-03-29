import 'package:flutter/material.dart';
import 'package:funshop/Blocs/blocSectors/blocIndex.dart';
import 'package:funshop/Blocs/blocSectors/bloc_Sectors.dart';

import 'package:funshop/Blocs/bloccatogory.dart';
import 'package:funshop/common/constanis/RouseLists.dart';
import 'package:funshop/src/sectors_page/Widgets/dangmuc.dart';

class listView extends StatelessWidget {
  blocSectors bloc;
  blocCatogoty bloccatogoty;
  var kei;
  var data;
  blocIndex blocindex;
  listView(
      {Key key,
      this.bloc,
      this.kei,
      this.data,
      this.blocindex,
      this.bloccatogoty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: blocindex.controller,
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: snapshot.hasData
                  ? data[snapshot.data].length
                  : data[0].length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      try {
                        bloc.list.add('Vui lòng chọn');
                        bloc.list[bloc.indextab] = snapshot.hasData
                            ? data[snapshot.data][index]['name']
                            : data[0][index]['name'];
                        bloc.indexdanhsach(index.toString());
                        bloc.batevnt('index');
                        if (bloc.list.length == 4) {
                          Navigator.popAndPushNamed(
                              context, rouesList.addproduct,
                              arguments: bloc.list[2]);
                        }
                      } catch (_) {
                        Navigator.popAndPushNamed(context, rouesList.addproduct,
                            arguments: bloc.list[1]);
                      }
                    },
                    child: danhMucSectors(
                        data: snapshot.hasData
                            ? data[snapshot.data][index]['name']
                            : data[0][index]['name']));
              });
        });
  }
}
