import 'package:flutter/material.dart';
import 'package:funshop/Blocs/blocSectors/blocIndex.dart';
import 'package:funshop/Blocs/blocSectors/bloc_Sectors.dart';
import 'package:funshop/Constains/sectorsConstains.dart';
import 'package:funshop/src/sectors_page/Widgets/dangmuc.dart';

class listView extends StatelessWidget {
  blocSectors bloc;
  var kei;
  var data;
  blocIndex blocindex;
  listView({Key key, this.bloc, this.kei, this.data, this.blocindex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: blocindex.controller,
      builder: (context, snapshot) {
        return ListView.builder(
            itemCount: snapshot.hasData?data[snapshot.data].length:data[0].length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    bloc.list.add('Vui lòng chọn');
                    bloc.list[bloc.indextab] =
                    snapshot.hasData?data[snapshot.data][index]['name']:data[0][index]['name'];
                    bloc.indexdanhsach(index);
                    // bloc.listseclect.add(constains().listdanhsach[bloc.index]['${bloc.index}']);
                    bloc.batevnt('index');
                  },
                  child: danhMucSectors(data: snapshot.hasData?data[snapshot.data][index]['name']:data[0][index]['name']));
            });
      }
    );
  }
}
