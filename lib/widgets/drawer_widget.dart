import 'package:flutter/material.dart';
import 'package:flutter_lesson_7/routes/albums.dart';
import 'package:flutter_lesson_7/routes/home.dart';

class DrawerWidget extends StatelessWidget {
  String? buttonName;
  DrawerWidget({Key? key, this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Home(
                        btnName: 'home',
                      ),
                    ),
                  );
                },
                child: const Text('Home'),
                style: TextButton.styleFrom(
                    primary: buttonName?.toLowerCase() == 'home'
                        ? Colors.blue
                        : Colors.black),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Albums(
                        btnName: 'albums',
                      ),
                    ),
                  );
                },
                child: const Text('Albums'),
                style: TextButton.styleFrom(
                    primary: buttonName?.toLowerCase() == 'albums'
                        ? Colors.blue
                        : Colors.black),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
