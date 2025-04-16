import 'package:flutter/material.dart';
import 'main_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'Navigation Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MainListPage(),
        // '/second': (context) => SecondPage(),
        // '/third': (context) => ThirdPage(), // 새로운 경로 추가
      },
    );
  }
}
