import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  Map info;
  DetailedPage({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(info['name'])),
      body: Text(info['about']),
    );
  }
}
