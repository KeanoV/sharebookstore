import 'package:flutter/material.dart';

class editproduct extends StatelessWidget {
  final String title;

  editproduct({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
    );
  }
}
