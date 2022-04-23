import 'package:flutter/material.dart';
import 'package:flutter_lesson_7/routes/main_screen.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => const MainScreen()},
    );
  }
}
