import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({super.key});

  @override
  State<AlignPage> createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 10강 (Align - 정렬하기)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text("Hello"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
