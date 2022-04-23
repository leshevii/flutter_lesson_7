import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_lesson_7/fetch_file.dart';
import 'package:flutter_lesson_7/routes/detailed_page.dart';
import 'package:flutter_lesson_7/widgets/drawer_widget.dart';

class Albums extends StatelessWidget {
  String? btnName;
  Albums({Key? key, this.btnName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Albums')),
      drawer: DrawerWidget(buttonName: btnName),
      body: FutureBuilder(
        future: fetchFileFromAssets('assets/artists.json'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List l = jsonDecode(snapshot.data as String);
            return ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailedPage(
                            info: l[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(l[index]['name']),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: l.length);
          }
          ;
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
