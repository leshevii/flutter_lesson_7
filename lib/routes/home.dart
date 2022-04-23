import 'package:flutter/material.dart';
import 'package:flutter_lesson_7/widgets/drawer_widget.dart';

class Home extends StatelessWidget {
  String? btnName;
  Home({Key? key, this.btnName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(buttonName: btnName),
      appBar: AppBar(title: const Text('Home')),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
