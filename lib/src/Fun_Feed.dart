import 'package:flutter/material.dart';
class funfeed extends StatefulWidget {
  @override
  _funfeedState createState() => _funfeedState();
}

class _funfeedState extends State<funfeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: BackButton(),
          ),
    );
  }
}
